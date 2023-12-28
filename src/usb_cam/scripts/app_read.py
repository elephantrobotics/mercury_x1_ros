#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy #引用ROS的Python接口功能包
import cv2, cv_bridge #引用opencv功能包。cv_bridge是ROS图像消息和OpenCV图像之间转换的功能包
import numpy as np #引用数组
from sensor_msgs.msg import Image #引用ROS内的图片消息格式
from sensor_msgs.msg import CompressedImage #引用ROS内的压缩图片消息格式

#定义一个图片转换的类，功能为：订阅RGB相机图片消息并转换为压缩格式处理，处理完成后以APP的话题名发布
class Image_converter:
 def __init__(self): #类成员初始化函数   
     self.bridge = cv_bridge.CvBridge() #初始化图片转换功能，cv_bridge.CvBridge()
     self.image_sub = rospy.Subscriber("/camera/rgb/image_raw/compressed", CompressedImage, self.callback) #初始化订阅者,rospy.Publisher()功能是创建订阅者类并输出
     self.image_pub = rospy.Publisher("/usb_cam/image_raw/compressed", CompressedImage, queue_size=10) #初始化发布者,rospy.Publisher()功能是创建发布者类并输出。queue_size为队列长度，当消息发布后订阅者暂时没有接收处理，则该消息进入缓存循环发送，当队列满后最老的数据被踢出队列
 
 def callback(self, data): #订阅者接受到消息后的回调函数，用于处理压缩的图片数据
    #转换压缩图片数据为cv2的图片数据。这里先转换成numpy数组，再转换成CV2的图片
    np_arr = np.fromstring(data.data, np.uint8)
    image_np = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)

    # 创建要发布的图片信息
    # 三个变量内容：header,format,data. data是cv2的图片转换成np.array，再输出成字符串
    jpeg_img = CompressedImage()
    jpeg_img.header.stamp = rospy.Time.now()
    jpeg_img.format = "jpeg"
    jpeg_img.data = np.array(cv2.imencode('.jpg', image_np)[1]).tostring()

     #发布消息
    self.image_pub.publish(jpeg_img)
    
    
if __name__ == '__main__': #这段判断的作用是，如果本py文件是直接运行的则判断通过执行if内的内容，如果是import到其他的py文件中被调用(模块重用)则判断不通过
  rospy.init_node("usb_cam") #创建节点
  rospy.loginfo("usb_cam node started") #打印ROS消息说明节点已开始运行
  Image_converter() #直接运行image_converter()函数创建类，该类在运行期间会一直存在。因为该类没有需要调用的函数，所以使用赋值的形式：a=image_converter()
  rospy.spin() #相当于while(1),当订阅者接收到新消息时调用回调函数

