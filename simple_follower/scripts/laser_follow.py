#!/usr/bin/env python
#coding=utf-8
# test mail: chutter@uos.de

import rospy
import thread, threading
import time
import numpy as np
from sensor_msgs.msg import Joy, LaserScan
from geometry_msgs.msg import Twist, Vector3
from simple_follower.msg import position as PositionMsg
from std_msgs.msg import String as StringMsg
from dynamic_reconfigure.server import Server
from simple_follower.cfg import laser_paramsConfig
from std_msgs.msg import Int8

angle=[0.0]*3
distan=[0.0]*3


class Follower:
	def __init__(self):
	
	        
		# 当我们停止接收来自ps3控制器的Joy消息时，我们将停止所有移动:
		self.controllerLossTimer = threading.Timer(1, self.controllerLoss) # 当失去连接时，将速度置零
		self.controllerLossTimer.start() # 启动线程
		self.switchMode= rospy.get_param('~switchMode') # 若该值设置为False，则必须一直按O键才能移动  
		self.max_speed = rospy.get_param('~maxSpeed') # 获取速度上限
		self.controllButtonIndex = rospy.get_param('~controllButtonIndex')

		self.buttonCallbackBusy=False
		self.active=False
		self.i=0

		# PID参数首先是角，距离
		targetDist = rospy.get_param('~targetDist') # 获取中距值
		global PID_param
		PID_param = rospy.get_param('~PID_controller') # 获取PID值 [角度,距离]

		# Dynamic Reconfigure
		self.dynamic_reconfigure_server = Server(laser_paramsConfig, self.reconfigCB) # 创建dynamic reconfigure服务，实现在线调参

		# 发布速度话题							话题名     消息类型    队列长度
		self.cmdVelPublisher = rospy.Publisher('/cmd_vel', Twist, queue_size =3) 

		# 来自ps3控制器(游戏手柄)的消息的话题
		#self.joySubscriber = rospy.Subscriber('joy', Joy, self.buttonCallback)
		#self.followspeed = rospy.Subscriber('/object_tracker/current_position', PositionMsg,self.positionUpdateCallback)

		# tracker话题，给予我们正在追踪的目标的当前位置信息

		# 订阅目标位置话题											话题名					消息类型				回调函数
		self.positionSubscriber = rospy.Subscriber('/object_tracker/current_position', PositionMsg, self.positionUpdateCallback) 

		# 来自tracker的字符串信息。例如，告诉我们是否丢失了对象
		self.trackerInfoSubscriber = rospy.Subscriber('/object_tracker/info', StringMsg, self.trackerInfoCallback) # 订阅消息话题
		
		# 第一个参数是角目标(总是0度)第二个参数是目标距离(比如1米)  
		
		# 创建simplePID对象				[目标角度,目标距离]		P 				I 				D
		# self.PID_controller = simplePID([0, targetDist], PID_param['P'], PID_param['I'], PID_param['D'])

		# 当按Ctrl+C终止运行时，调用回调函数controllerLoss使小车速度置零并发布消息
		rospy.on_shutdown(self.controllerLoss)

	def publish_flag(self):
		
		laser_follow_flag=Int8()
		laser_follow_flag.data=1
		laserfwflagPublisher.publish(laser_follow_flag)
		rospy.loginfo('a=%d',laser_follow_flag.data)
		print("11111111111111111111111111")

	# Dynamic Reconfigure Config
	def reconfigCB(self,config,level):			
		self.max_speed = config.maxSpeed # 将最大速度赋值为动态调参后的值
		targetDist = config.targetDist # 将中距值赋值为动态调参后的值
		# 获取PID值
		PID_param['P'] = [config.P_v,config.P_w]
		PID_param['I'] = [config.I_v,config.I_w]
		PID_param['D'] = [config.D_v,config.D_w]
		# 创建simplePID对象				[目标角度,目标距离]		P 				I 				D
		self.PID_controller = simplePID([0, targetDist], PID_param['P'], PID_param['I'], PID_param['D']) # 实例化simplePID以实现PID控制更新
		rospy.loginfo("max_speed:{},targetDist:{}".format(self.max_speed,targetDist)) # 在屏幕上输出最大速度与中距值日志
		return config
		
	
	def trackerInfoCallback(self, info):
		# we do not handle any info from the object tracker specifically at the moment. just ignore that we lost the object for example
		# 我们不处理此时目标跟踪回传的任何信息，就当做此时没有跟踪的目标物
		rospy.logwarn(info.data)
	
	def positionUpdateCallback(self, position):

		# gets called whenever we receive a new position. It will then update the motorcomand
		# 每当我们收到一个新位置时，就会被调用。然后它将更新motorcommand

		#if(not(self.active)):
			#return #if we are not active we will return imediatly without doing anything

		angleX= position.angleX # 与目标之间的角度
		distance = position.distance # 与目标之间的距离
		
		if(angleX>0):
			angleX=angleX-3.1415
			#angleX=angleX-2.3561 #A2_moveit
		else :
			angleX=angleX+3.1415
			#angleX=angleX+2.3561 #A2_moveit

		# call the PID controller to update it and get new speeds
		# 调用PID控制器来更新它并获得新的速度
		[uncliped_ang_speed, uncliped_lin_speed] = self.PID_controller.update([angleX, distance])
			
		# clip these speeds to be less then the maximal speed specified above
		# 将这些速度上面规定的最大速度以内
		angularSpeed = np.clip(-uncliped_ang_speed, -self.max_speed, self.max_speed)
		linearSpeed  = np.clip(-uncliped_lin_speed, -self.max_speed, self.max_speed)	
		
		# create the Twist message to send to the cmd_vel topic
		# 创建Twist消息发送到cmd_vel话题
		velocity = Twist()	
		velocity.linear = Vector3(linearSpeed,0,0.) # 线速度
		velocity.angular= Vector3(0., 0.,angularSpeed) # 角速度
		self.cmdVelPublisher.publish(velocity)
		if self.i < 10:
			self.i = self.i +1
		elif self.i == 10:		#语音识别标志
			self.publish_flag()
			self.i = 11	

	# def buttonCallback(self, joy_data):
	# 	# this method gets called whenever we receive a message from the joy stick

	# 	# there is a timer that always gets reset if we have a new joy stick message
	# 	# if it runs out we know that we have lost connection and the controllerLoss function will be called


	# 	self.controllerLossTimer.cancel()
	# 	self.controllerLossTimer = threading.Timer(0.5, self.controllerLoss)
	# 	self.controllerLossTimer.start()

	# 	# if we are in switch mode, one button press will make the follower active / inactive 
	# 	# but 'one' button press will be visible in roughly 10 joy messages (since they get published to fast) 
	# 	# so we need to drop the remaining 9

	# 	if self.buttonCallbackBusy:
	# 		# we are busy with dealing with the last message
	# 		return 
	# 	else:
	# 		# we are not busy. i.e. there is a real 'new' button press
	# 		# we deal with it in a seperate thread to be able to drop the other joy messages arriving in the mean time
	# 		thread.start_new_thread(self.threadedButtonCallback,  (joy_data, ))

	# def threadedButtonCallback(self, joy_data):
	# 	self.buttonCallbackBusy = True

	# 	if(joy_data.buttons[self.controllButtonIndex]==self.switchMode and self.active):
	# 		# we are active
	# 		# switchMode = false: we will always be inactive whenever the button is not pressed (buttons[index]==false)
	# 		# switchMode = true: we will only become inactive if we press the button. (if we keep pressing it, 
	# 		# we would alternate between active and not in 0.5 second intervalls)
	# 		rospy.loginfo('stoping')
	# 		self.stopMoving()
	# 		self.active = False
	# 		rospy.sleep(0.5)
	# 	elif(joy_data.buttons[self.controllButtonIndex]==True and not(self.active)):
	# 		# if we are not active and just pressed the button (or are constantly pressing it) we become active
	# 		rospy.loginfo('activating')
	# 		self.active = True #enable response
	# 		rospy.sleep(0.5)

	# 	self.buttonCallbackBusy = False

	# 将速度置零
	def stopMoving(self):
		velocity = Twist()
		velocity.linear = Vector3(0.,0.,0.)
		velocity.angular= Vector3(0.,0.,0.)
		self.cmdVelPublisher.publish(velocity)

	def controllerLoss(self):
		# we lost connection so we will stop moving and become inactive
		# 连接丢失，停止移动，并变成不活跃状态
		self.stopMoving()
		self.active = False
		rospy.loginfo('lost connection')


		
class simplePID:
	'''very simple discrete PID controller'''
	'''非常简单的离散PID控制器'''
	def __init__(self, target, P, I, D):
		'''Create a discrete PID controller
		each of the parameters may be a vector if they have the same length
		
		Args:
		target (double) -- the target value(s)
		P, I, D (double)-- the PID parameter

		'''

		'''
		创建一个离散PID控制器
		如果长度相同，每个参数都可以是一个向量
		Args:
		target(double)——目标值
		P, I, D (double)——PID参数
		'''

		# check if parameter shapes are compatabile. 
		# 检查参数形状是否兼容
		if(not(np.size(P)==np.size(I)==np.size(D)) or ((np.size(target)==1) and np.size(P)!=1) or (np.size(target )!=1 and (np.size(P) != np.size(target) and (np.size(P) != 1)))):
			raise TypeError('input parameters shape is not compatable')
		rospy.loginfo('PID initialised with P:{}, I:{}, D:{}'.format(P,I,D))
		self.Kp		=np.array(P)
		self.Ki		=np.array(I)
		self.Kd		=np.array(D)
		self.setPoint   =np.array(target)
		
		self.last_error=0
		self.integrator = 0
		self.integrator_max = float('inf')
		self.timeOfLastCall = None 

	def update(self, current_value):
		'''Updates the PID controller. 

		Args:
			current_value (double): vector/number of same legth as the target given in the constructor

		Returns:
			controll signal (double): vector of same length as the target

		'''

		'''
		更新PID控制器。
		Args:
			Current_value (double)：与构造函数中给定的目标相同长度的向量/数
		Returns:
			controll signal (double))：与目标长度相同的矢量
		'''
		current_value=np.array(current_value) # [angleX distance]
		if(np.size(current_value) != np.size(self.setPoint)):
			raise TypeError('current_value and target do not have the same shape')
		if(self.timeOfLastCall is None):
			# the PID was called for the first time. we don't know the deltaT yet
			# PID第一次被调用，我们还不知道时间差
			# no controll signal is applied
			# 没有控制信号被应用
			self.timeOfLastCall = time.clock()
			return np.zeros(np.size(current_value))

		
		error = self.setPoint - current_value # 偏差值

		# 偏差较小时停止移动
		if error[0]<0.1 and error[0]>-0.1: # error[0]为角度偏差
			error[0]=0
		if error[1]<0.1 and error[1]>-0.1: # error[1]为距离偏差
			error[1]=0

        # when target is little, amplify velocity by amplify error 
        # 当目标很小时，通过放大误差来提高速度
		if error[1]>0 and self.setPoint[1]<1.3:	
			error[1]=error[1]*(1.3/self.setPoint[1])
		P = error
		
		currentTime = time.clock()
		deltaT      = (currentTime-self.timeOfLastCall)

		# integral of the error is current error * time since last update
		# 误差的积分是 当前误差*时间差
		self.integrator = self.integrator + (error*deltaT)
		I = self.integrator
		
		# derivative is difference in error / time since last update
		# D是误差的差值 / 时间差
		D = (error-self.last_error)/deltaT
		
		self.last_error = error
		self.timeOfLastCall = currentTime
		
		# return controll signal
		# 返回控制信号
		return self.Kp*P + self.Ki*I + self.Kd*D
		
		
	

			




if __name__ == '__main__':
	
	print('starting')
	laserfwflagPublisher = rospy.Publisher('/laser_follow_flag', Int8, queue_size =1)
	rospy.init_node('follower')
	follower = Follower()
	try:
		rospy.spin()
	except rospy.ROSInterruptException:
		print('exception')


