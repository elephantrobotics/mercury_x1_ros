#!/usr/bin/env python
# coding=utf-8

import rospy
from geometry_msgs.msg import PoseStamped
from move_base_msgs.msg import MoveBaseActionResult
from std_msgs.msg import Int8
import time
import threading
from sensor_msgs.msg import Image
import cv2, cv_bridge
import base64
import json
import requests

free = 1   #1代表在初始位置可以进行识别，0代表正在去对应区域，-1代表正在回来
goal_pub = rospy.Publisher('/move_base_simple/goal', PoseStamped, queue_size = 1)
bridge = cv_bridge.CvBridge()
i=1

def thread_job():
    rospy.spin()

#free: 1代表在初始位置可以进行识别，0代表正在去对应区域，-1代表正在回来
def goal_reach_callback(msg):
    global free
    starting_piont = PoseStamped()
    if msg.status.text == "Goal reached." : 
        #free=0，机器人在对应区域
        if free == 0 :
            print("Goal reached!")
            time.sleep(2)  #停止10秒
            starting_piont.header.frame_id = "map"
            starting_piont.pose.position.x = 0;
            starting_piont.pose.position.y = 0;
            starting_piont.pose.orientation.z = 0;
            starting_piont.pose.orientation.w = 1;
            goal_pub.publish(starting_piont)
            free = -1
        
        elif free == -1 :
            free = 1
            print("Car is back!")

			
def set_free_callback(msg):
    global free
    free = msg.data
    print("set free succeeded !")
	
def image_callback(msg):
    pass

def cv2_to_base64(image):
    data = cv2.imencode('.jpg', image)[1]
    return base64.b64encode(data.tostring()).decode('utf8')

def ai_action():
    global free
    global i
    
    #初始化各节点
    rospy.init_node("send_nav")
    add_thread = threading.Thread(target = thread_job)
    add_thread.start
    
    #ROS消息订阅监听
    goal_reach_sub = rospy.Subscriber("/move_base/result", MoveBaseActionResult, goal_reach_callback)
    set_free_sub = rospy.Subscriber("/set_free", Int8, set_free_callback)
    image_sub = rospy.Subscriber("/camera/rgb/image_raw", Image, image_callback)
    goal_pub = rospy.Publisher('/move_base_simple/goal', PoseStamped, queue_size = 1)
	
	#初始化机器人位置信息
    goal = PoseStamped()
    goal.header.seq = 0
    goal.header.frame_id = "map"
    goal.pose.position.x =   -0.00679859704876;
    goal.pose.position.y =   0.0425162910391;
    goal.pose.position.z = 0;
    goal.pose.orientation.x = 0;
    goal.pose.orientation.y = 0;
    goal.pose.orientation.z = 0;
    goal.pose.orientation.w =0.999999987494;

    print("Node is running !")

    while not rospy.is_shutdown():
        if free == 1:
            # cho = int(input("请将物体放在摄像头前面，输入1准备拍照:"))  #输入cho
            cho = int(input('请将工件放在摄像头前面，输入1准备拍照，输入其他退出程序:'))
            #如果输入1则进行拍照及后面的识别
            if cho == 1:
                time.sleep(20)
                image = rospy.wait_for_message("/camera/rgb/image_raw", Image, timeout = None)
	        image = bridge.imgmsg_to_cv2(image, desired_encoding='bgr8')
                #time.sleep(2)
	        cv2.imshow('frame',image)
                print('在弹出的窗口中按下s保存图片')
                k=cv2.waitKey()
	        if k==ord('s'):  #按s进行图片的保存
	            cv2.imwrite('./'+str(i)+'.jpg',image)
                else:
                    cv2.destroyAllWindows()
                    continue
	        cv2.destroyAllWindows()
                
                # 读取预测图片
                with open('./'+str(i)+'.jpg', 'rb') as f:
                    img = f.read()
                # 封装请求体
                p = {'threshold': 0.1}
                # 发送请求
                response = requests.post('http://192.168.124.72:24401/', params=p, data=img).json()
                # print(response)
                # 提取识别结果
                results = response['results']
                score = 0
                # 提取置信度最高的作为识别结果
                for i in range(len(results)):
                    s = results[i]['score']
                    if s > score:
                        score = s
                        category = results[i]['label']
                print(category)
                
                #如果识别的结果为A则进入区域A
                #注意这里判断条件需要和模型实际的标签对应
                #本模型的标签为A,B,C，
                if category == u'A':
                    print("识别的结果为工件A，现在前往仓储 A !")
                    goal.pose.position.x = 1
	    	    goal.pose.position.y = 0;
		    goal.pose.orientation.x = 0;
		    goal.pose.orientation.y = 0;
		    goal.pose.orientation.z = 0;
		    goal.pose.orientation.w = 1;
                    goal_pub.publish(goal)
                    free = 0
                #如果识别的结果为B则进入区域B
                elif category == u'B':
                    print("识别的结果为工件B，现在前往仓储 B !")
		    goal.pose.position.x = 1;
	    	    goal.pose.position.y = -1;
		    goal.pose.orientation.x = 0;
		    goal.pose.orientation.y = 0;
		    goal.pose.orientation.z = 0
                    goal.pose.orientation.w = 1;
                    goal_pub.publish(goal)
                    free = 0
                #如果识别的结果为C则进入区域C
                elif category == u'C':
                    print("识别的结果为工件C,现在前往仓储 C !")
		    goal.pose.position.x = 1.63;
		    goal.pose.position.y = 0.0490116989259;
		    goal.pose.orientation.x = 0;
		    goal.pose.orientation.y = 0;
		    goal.pose.orientation.z = -0.997816080801;
		    goal.pose.orientation.w = 0.0660535305246;
                    goal_pub.publish(goal)
                    free = 0
                else:
                    print('识别结果为空，请重新拍照进行识别')
                i += 1
            else:
                print("程序退出...")
                break
if __name__ == '__main__':
    try:
        ai_action()
    except rospy.ROSInterruptException:
        pass
