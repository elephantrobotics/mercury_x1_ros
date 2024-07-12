#!/usr/bin/env python
# coding=utf-8

import rospy
from ar_track_alvar_msgs.msg import AlvarMarkers
from geometry_msgs.msg import Twist
from std_msgs.msg import String
from math import copysign

from dynamic_reconfigure.server import Server
from simple_follower.cfg import arPIDConfig


class ArFollower():
	def __init__(self):
		rospy.init_node("ar_follower")
		rate = rospy.Rate(10)

		#参数初始化
		self.max_angular_speed = rospy.get_param("~max_angular_speed")
		self.min_angular_speed = rospy.get_param("~min_angular_speed")
		self.max_linear_speed = rospy.get_param("~max_linear_speed")
		self.min_linear_speed = rospy.get_param("~min_linear_speed")

		self.goal_x = rospy.get_param("~goal_x")
		self.goal_y = rospy.get_param("~goal_y")
		
		#rqt_srv
		self.srv = Server(arPIDConfig,self.config_callback)

		self.linearfront_p = 0.5
		self.linearback_p = 0.6
		self.angularleft_p = 3.0
		self.angularright_p =2.7
		self.d_param = 0.8
		
		#订阅AR标签位姿信息，发布速度话题
		self.cmd_vel_pub = rospy.Publisher("/cmd_vel", Twist, queue_size=5)
		self.ar_pose_sub = rospy.Subscriber("/ar_pose_marker", AlvarMarkers,self.set_cmd_vel )

		#先设定初始化时未检测到AR标签
		self.target_visible = False
		self.move_cmd = Twist()

		rospy.loginfo("ar_follow starting!")

		#未检测到进程退出时持续发布速度信息
		while not rospy.is_shutdown():
			self.cmd_vel_pub.publish(self.move_cmd)
			rate.sleep()

	#rqt动态调参相关
	def config_callback(self, config, level):
		self.linearfront_p = config.linearfront_p
		self.linearback_p = config.linearback_p
		self.angularleft_p = config.angularleft_p
		self.angularright_p = config.angularright_p
		self.d_param = config.d_param

		self.max_angular_speed = config.max_angular_speed
		self.min_angular_speed = config.min_angular_speed
		self.max_linear_speed = config.max_linear_speed
		self.min_linear_speed = config.min_linear_speed

		self.goal_x = config.goal_x
		self.goal_y = config.goal_y
		
		return config

	def set_cmd_vel(self, msg):
		try:
			marker = msg.markers[0] #设定以检测到的第一个AR标签为目标
			if not self.target_visible:
				rospy.loginfo("the robot is Tracking Target!")
			self.target_visible = True #检测到AR标签后将检测标志位置为ture
		except:
			if self.target_visible:
				rospy.loginfo("Robot Lost Target!")
			self.target_visible = False
			self.move_cmd.linear.x = 0
			self.move_cmd.angular.z = 0

			return

		offset_y = 0.06 #小车中心与摄像头检测到的AR标签中心的偏差
		target_offset_y = marker.pose.pose.position.y + offset_y #AR标签位姿信息y方向（已校正）
		target_offset_x = marker.pose.pose.position.x #AR标签位姿信息x方向

		#当AR标签和小车的距离与设定距离存在偏差时
		if target_offset_x > self.goal_x:
			linearspeed = target_offset_x * self.linearfront_p - self.d_param * 0.4
			if linearspeed < 0.012:
				linearspeed = 0
				#极低速置零，避免小车摇摆
			if linearspeed > self.max_linear_speed:
				linearspeed = self.max_linear_speed
				#速度限幅
			self.move_cmd.linear.x = linearspeed
			#当AR标签中心与小车中心存在偏差时
			if target_offset_y > self.goal_y: 
				angularspeed = target_offset_y * self.angularleft_p - self.d_param * 0.6
				if angularspeed < 0.012:
					angularspeed = 0
					#极低速置零，避免小车摇摆
				if angularspeed > self.max_angular_speed:
					angularspeed = self.max_angular_speed
					#速度限幅
				self.move_cmd.angular.z = angularspeed
			else:
				angularspeed = target_offset_y * self.angularright_p + self.d_param * 0.3
				if abs(angularspeed) < 0.012:
					angularspeed = 0
				if abs(angularspeed) > self.max_angular_speed:
					angularspeed = -self.max_angular_speed
				self.move_cmd.angular.z = angularspeed
		else:
			linearspeed = (target_offset_x - self.goal_x) * self.linearback_p - self.d_param * 0.1
			if abs(linearspeed) < 0.012:
				linearspeed = 0
			if linearspeed > self.max_linear_speed:
				linearspeed = -self.max_linear_speed
			self.move_cmd.linear.x = linearspeed
			#当AR标签中心与小车中心存在偏差时
			if target_offset_y > self.goal_y: 
				angularspeed = target_offset_y * self.angularleft_p - self.d_param * 0.1
				if angularspeed < 0.012:
					angularspeed = 0
					#极低速置零，避免小车摇摆
				if angularspeed > self.max_angular_speed:
					angularspeed = self.max_angular_speed
					#速度限幅
				self.move_cmd.angular.z = angularspeed
			else:
				angularspeed = target_offset_y * self.angularright_p + self.d_param * 0.0
				if abs(angularspeed) < 0.012:
					angularspeed = 0
				if abs(angularspeed) > self.max_angular_speed:
					angularspeed = -self.max_angular_speed
				self.move_cmd.angular.z = angularspeed

	def shutdown(self):
		rospy.loginfo("ar_follow stopping...")
		#退出进程时提示		
		self.cmd_vel_pub.publish(Twist())
		rospy.sleep(1)

if __name__ == '__main__':
	try:
		ArFollower()
		rospy.spin()
	except rospy.ROSInterruptException:
		print('exception')

