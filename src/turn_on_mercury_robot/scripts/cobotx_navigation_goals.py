#!/usr/bin/env python                                                                                                                      
#coding=UTF-8
import time
import threading
import time
import socket
import rospy
import time
import actionlib

from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from geometry_msgs.msg import Point
from actionlib_msgs.msg import *
from actionlib_msgs.msg import GoalID
from geometry_msgs.msg import Point
from geometry_msgs.msg import Twist
from geometry_msgs.msg import PoseWithCovarianceStamped

# client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# client_socket.connect(('192.168.123.126', 9004))

pub = rospy.Publisher('/cmd_vel',Twist, queue_size=10)
pub_setpose = rospy.Publisher('/initialpose',PoseWithCovarianceStamped, queue_size=10)
pub_cancel = rospy.Publisher('/move_base/cancel', GoalID, queue_size=10)

def pub_vel(x, y , theta):
    twist = Twist()
    twist.linear.x = x
    twist.linear.y = y
    twist.linear.z = 0
    twist.angular.x = 0
    twist.angular.y = 0
    twist.angular.z = theta
    pub.publish(twist)

class MapNavigation:
    def __init__(self):
        self.goalReached = False
        rospy.init_node('map_navigation', anonymous=False)
        
    def moveToGoal(self, xGoal, yGoal, orientation_z, orientation_w):
        ac = actionlib.SimpleActionClient("move_base", MoveBaseAction)
        while(not ac.wait_for_server(rospy.Duration.from_sec(5.0))):
      
            sys.exit(0)

        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = "map"
        goal.target_pose.header.stamp = rospy.Time.now()
        goal.target_pose.pose.position =  Point(xGoal, yGoal, 0)
        goal.target_pose.pose.orientation.x = 0.0
        goal.target_pose.pose.orientation.y = 0.0
        goal.target_pose.pose.orientation.z = orientation_z 
        goal.target_pose.pose.orientation.w = orientation_w

        rospy.loginfo("Sending goal location ...")
        ac.send_goal(goal) 

        ac.wait_for_result(rospy.Duration(60))

        if(ac.get_state() ==  GoalStatus.SUCCEEDED):
            rospy.loginfo("You have reached the destination")
            return True
        else:
            rospy.loginfo("The robot failed to reach the destination")
            return False

    def shutdown(self):
        rospy.loginfo("Quit program")
        rospy.sleep()

    def navigate(self, xGoal, yGoal, orientation_z, orientation_w):
        self.goalReached = self.moveToGoal(xGoal, yGoal, orientation_z, orientation_w)
        return self.goalReached

#socket
# def socket_connect(data):
#     #data = input('write:')
#     client_socket.sendall(data.encode())
#     print(data.encode())

# def get_res():
#     while 1:
#         global socket_res
#         data = client_socket.recv(1024).decode('UTF-8')
#         socket_res = data
#         print(f"Received response from server: {socket_res}")
#         time.sleep(0.2)

if __name__ == '__main__':
    # goals
    goals = [
    (5.668717861175537, -0.3587464392185211, 0.28215484027894455, 0.9593688790591257),  # corner1
    (6.833220481872559, 0.523029625415802, 0.2635481370520496, 0.9646462457587207),  # corner2
    (8.606064796447754, 2.346750497817993, 0.695545718232533, 0.7184818396093181),  # desk_1
    (8.754322052001953, 6.7733964920043945, 0.774108134204125, 0.6330533915547789),  # desk_2
    (6.705804824829102, 9.912127494812012, 0.7157463080949427, 0.6983603814997379),  # door
    (6.714288711547852, 12.871033668518066, 0.7038931321256822, 0.710305890828942),  # meeting room  
    ]
    
    #back
    back_goals =[
    (6.6801581382751465, 9.68292236328125,-0.3766679973756092, 0.9263483252821522), #back_door
    (8.751319885253906, 7.584722518920898, -0.7253242265223879,0.6884074131062939), #back_desk_2

    #(8.459306716918945, 3.4507968425750732, -0.7430219880179585,0.6692670060012228),#back_desk_1 Ineffective
    (8.408796310424805, 2.4658150672912598, -0.8522438688498349,0.5231447103888803),#back_desk_1

    #(6.628156661987305, 0.5374405384063721, -0.9697692645322096, 0.24402371517673693), #back_corner1
    (5.288103103637695, -0.5398174524307251, 0.9999992606596254, 0.001216009951635678), #back_corner2
    (1.2207894325256348, -0.3337854743003845, -0.9999894369910013, 0.004596292682190771),  # testing room Ineffective
    #(1.3328877687454224, -0.3156866133213043, -0.7122028171990968, 0.7019737510574522),
    ]

    #init navigation
    map_navigation = MapNavigation()

    #socket
    # t = threading.Thread(target=get_res)
    # t.start()
    pass

    try:
        #navigate to target
        for i in range(3):
            for goal in goals:
                x_goal, y_goal, orientation_z, orientation_w = goal
                flag_feed_goalReached = map_navigation.navigate(x_goal, y_goal, orientation_z, orientation_w)
            time.sleep(3)  
        
            #escapes
            pub_vel(0.2,0,0)
            time.sleep(16)
            pub_vel(0,0,0)
            time.sleep(3)
            pub_vel(-0.2,0,0)
            time.sleep(16)
            pub_vel(0,0,-0.7)
            time.sleep(5)

            #go_back
            for goal in back_goals:
                x_goal, y_goal, orientation_z, orientation_w = goal
                flag_feed_goalReached = map_navigation.navigate(x_goal, y_goal, orientation_z, orientation_w)
            time.sleep(3)

            #escapes
            pub_vel(0,0,0.7)
            time.sleep(2.2)
            pub_vel(0,0,0)
            time.sleep(3)
            pub_vel(0.2,0,0)
            time.sleep(11)
            pub_vel(0,0,0)
            time.sleep(3)     
            pub_vel(-0.2,0,0)
            time.sleep(11)
            pub_vel(0,0,0.7)
            time.sleep(2.5)
            pub_vel(0,0,0)
            time.sleep(3)            

         
    except rospy.ROSInterruptException:
        pass