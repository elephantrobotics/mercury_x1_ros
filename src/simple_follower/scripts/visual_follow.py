#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import thread, threading
import time
import numpy as np
from sensor_msgs.msg import Joy, LaserScan
from geometry_msgs.msg import Twist, Vector3
from simple_follower.msg import position as PositionMsg
from std_msgs.msg import String as StringMsg
from dynamic_reconfigure.server import Server
from simple_follower.cfg import Params_PIDConfig


class Follower:
	def __init__(self):
		
		
		# as soon as we stop receiving Joy messages from the ps3 controller we stop all movement:
		# 一旦我们停止从ps3控制器接收Joy消息，我们就会停止所有移动
		self.controllerLossTimer = threading.Timer(1, self.controllerLoss) #if we lose connection # 如果我们失去连接
		self.controllerLossTimer.start()
		self.switchMode= rospy.get_param('~switchMode') 
		# if this is set to False the O button has to be kept pressed in order for it to move
		# 如果设置为 False，O 按钮必须一直按下才能移动
		self.max_speed = rospy.get_param('~maxSpeed') 
		self.controllButtonIndex = rospy.get_param('~controllButtonIndex')

		self.buttonCallbackBusy=False
		self.active=False
		self.i=0


		# PID parameters first is angular, distance  PID参数首先是angular，distance
		targetDist = rospy.get_param('~targetDist')
		PID_param = rospy.get_param('~PID_controller')
		self.Kp	=np.array(PID_param['P'])
		self.Ki	=np.array(PID_param['I'])
		self.Kd	=np.array(PID_param['D'])

		self.setPoint   =np.array([0, targetDist])
		self.last_error=0
		self.integrator = 0
		self.integrator_max = float('inf')
		self.timeOfLastCall = None 
		
		self.cmdVelPublisher = rospy.Publisher('/cmd_vel', Twist, queue_size =3)
		# the topic for the messages from the ps3 controller (game pad)
		# self.joySubscriber = rospy.Subscriber('joy', Joy, self.buttonCallback)
		# self.followspeed = rospy.Subscriber('/object_tracker/current_position', PositionMsg,self.positionUpdateCallback)

		# the topic for the tracker that gives us the current position of the object we are following
		# 目标跟踪的话题，它为我们提供了我们所关注对象的当前位置
		self.positionSubscriber = rospy.Subscriber('/object_tracker/current_position', PositionMsg, self.positionUpdateCallback)
		# an info string from that tracker. E.g. telling us if we lost the object
		# 来自该跟踪器的信息字符串。例如：告诉我们是否丢失了对象
		self.trackerInfoSubscriber = rospy.Subscriber('/object_tracker/info', StringMsg, self.trackerInfoCallback)

		self.speed_PID = Server(Params_PIDConfig,self.followreconfigure)
		# this method gets called when the process is killed with Ctrl+C
		# 当进程被 Ctrl+C 杀死时调用此方法
		rospy.on_shutdown(self.controllerLoss)


	def update(self, current_value):
		'''Updates the PID controller. 
			更新 PID 控制器
		Args:参数
			current_value (double): vector/number of same legth as the target given in the constructor
			当前位置的值 (double): 与构造函数中给出的目标相同的长度的向量/数量
		Returns:返回值：
			controll signal (double): vector of same length as the target
			控制信号（double）：与目标长度相同的向量
		'''
		current_value=np.array(current_value)
		if(np.size(current_value) != np.size(self.setPoint)):
			raise TypeError('current_value and target do not have the same shape')
		if(self.timeOfLastCall is None):
			# the PID was called for the first time. we don't know the deltaT yet
			# 第一次调用PID，我们还不知道 deltaT
			# no controll signal is applied
			# 没有施加控制信号
			self.timeOfLastCall = time.clock()
			return np.zeros(np.size(current_value))
		# 位置闭环控制
		error = self.setPoint - current_value

                #when bias is little, stop moving. 当偏差很小时，停止移动 errpr[0]=angle(rad),         error[1]=distance(mm)
		# self.setPoint[0]=angle(rad), self.setPoint[1]=distance(mm)

		if error[0]<0.1 and error[0]>-0.1:
			error[0]=0
		if error[1]<100 and error[1]>-100:
			error[1]=0
		# when target is little, amplify velocity by amplify error.
		# 当目标很小时，通过放大误差来放大速度。
		if (error[1]>0 and self.setPoint[1]<1200):
			error[1]=error[1]*(1200/self.setPoint[1])*0.7
		P =  error
		currentTime = time.clock()
		deltaT      = (currentTime-self.timeOfLastCall)
		# integral of the error is current error * time since last update
		# 误差的积分是当前误差 * 自上次更新以来的时间
		self.integrator = self.integrator + (error*deltaT)
		I = self.integrator
		# derivative is difference in error / time since last update
		# 导数是自上次更新以来的误差/时间差异
		D = (error-self.last_error)/deltaT
		self.last_error = error
		self.timeOfLastCall = currentTime
		# return controll signal
		return self.Kp*P + self.Ki*I + self.Kd*D


	def followreconfigure(self, config, level):

		self.Kp[0]  =  config.speed_ap
		self.Ki[0]  =  config.speed_ai
		self.Kd[0]  =  config.speed_ad
		self.Kp[1]  =  config.speed_vp/1000
		self.Ki[1]  =  config.speed_vi/1000
		self.Kd[1]  =  config.speed_vd/1000

		return config

	
	def trackerInfoCallback(self, info):
		# we do not handle any info from the object tracker specifically at the moment. just ignore that we lost the object for example
		# 目前我们不专门处理来自对象跟踪器的任何信息。例如，忽略我们丢失了对象
		rospy.logwarn(info.data)
	
	def positionUpdateCallback(self, position):
		# gets called whenever we receive a new position. It will then update the motorcomand
		# 每当我们收到新职位时都会被调用。然后它会更新motorcomand

		# if(not(self.active)):
			#return 
			#if we are not active we will return imediatly without doing anything
			#如果我们不活跃，我们将立即返回而不做任何事情

		angleX= position.angleX
		distance = position.distance
		# call the PID controller to update it and get new speeds
		# 调用 PID 控制器来更新它并获得新的速度

		[uncliped_ang_speed, uncliped_lin_speed] =self.update([angleX, distance])

		# clip these speeds to be less then the maximal speed specified above
		# 将这些速度限制为小于上面指定的最大速度
		angularSpeed = np.clip(-uncliped_ang_speed, -self.max_speed, self.max_speed)
		linearSpeed  = np.clip(-uncliped_lin_speed, -self.max_speed, self.max_speed)
		
		# create the Twist message to send to the cmd_vel topic
		# 创建要发送到 cmd_vel 话题的 Twist 消息
		velocity = Twist()	
		velocity.linear = Vector3(linearSpeed,0,0.)
		velocity.angular= Vector3(0., 0.,angularSpeed)
		rospy.loginfo('linearSpeed: {}, angularSpeed: {}'.format(linearSpeed, angularSpeed))
		self.cmdVelPublisher.publish(velocity)		

	def buttonCallback(self, joy_data):
		# this method gets called whenever we receive a message from the joy stick

		# there is a timer that always gets reset if we have a new joy stick message
		# if it runs out we know that we have lost connection and the controllerLoss function
		# will be called
		self.controllerLossTimer.cancel()
		self.controllerLossTimer = threading.Timer(0.5, self.controllerLoss)
		self.controllerLossTimer.start()

		# if we are in switch mode, one button press will make the follower active / inactive 
		# but 'one' button press will be visible in roughly 10 joy messages (since they get published to fast) 
		# so we need to drop the remaining 9
		
		if self.buttonCallbackBusy:
			# we are busy with dealing with the last message
			return 
		else:
			# we are not busy. i.e. there is a real 'new' button press
			# we deal with it in a seperate thread to be able to drop the other joy messages arriving in the mean
			# time
			thread.start_new_thread(self.threadedButtonCallback,  (joy_data, ))

	def threadedButtonCallback(self, joy_data):
		self.buttonCallbackBusy = True

		if(joy_data.buttons[self.controllButtonIndex]==self.switchMode and self.active):
			# we are active
			# switchMode = false: we will always be inactive whenever the button is not pressed (buttons[index]==false)
			# switchMode = true: we will only become inactive if we press the button. (if we keep pressing it, 
			# we would alternate between active and not in 0.5 second intervalls)
			rospy.loginfo('stoping')
			self.stopMoving()
			self.active = False
			rospy.sleep(0.5)
		elif(joy_data.buttons[self.controllButtonIndex]==True and not(self.active)):
			# if we are not active and just pressed the button (or are constantly pressing it) we become active
			rospy.loginfo('activating')
			self.active = True #enable response
			rospy.sleep(0.5)

		self.buttonCallbackBusy = False

	def stopMoving(self):
		velocity = Twist()
		velocity.linear = Vector3(0.,0.,0.)
		velocity.angular= Vector3(0.,0.,0.)
		self.cmdVelPublisher.publish(velocity)

	def controllerLoss(self):
		# we lost connection so we will stop moving and become inactive
		self.stopMoving()
		self.active = False
		rospy.loginfo('lost connection')


if __name__ == '__main__':
	print('starting')
	rospy.init_node('follower')
	follower = Follower()
	try:
		rospy.spin()
	except rospy.ROSInterruptException:
		print('exception')


