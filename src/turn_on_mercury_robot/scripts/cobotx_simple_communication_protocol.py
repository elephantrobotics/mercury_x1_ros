#!/usr/bin/env python                                                                                                                      
#coding=UTF-8
import time
import threading
import time
import socket
import rospy
import time
import actionlib

from std_msgs.msg import Float32
from actionlib_msgs.msg import *
from actionlib_msgs.msg import GoalID
from tf.transformations import quaternion_from_euler
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from geometry_msgs.msg import Point
from geometry_msgs.msg import Point
from geometry_msgs.msg import Twist
from geometry_msgs.msg import PoseWithCovarianceStamped

interrupt_voltage_receive = False   #Default not to subscribe to voltage topic
global socket_res
socket_res = None

# MapNavigation
class MapNavigation:
    def __init__(self):
        self.goalReached = False
        rospy.init_node('map_navigation', anonymous=False)

        # rospublisher
        self.pub = rospy.Publisher('/cmd_vel',Twist, queue_size=10)
        self.pub_setpose = rospy.Publisher('/initialpose',PoseWithCovarianceStamped, queue_size=10)
        self.pub_cancel = rospy.Publisher('/move_base/cancel', GoalID, queue_size=10)
        self.voltage_subscriber = rospy.Subscriber("/Voltage", Float32, self.voltage_callback) #Create a battery-voltage topic subscriber

        #Create TCP/IP socket
        self.host = "192.168.124.21"  #IP
        self.port = 9000  # port
        self.client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.client_socket.connect((self.host, self.port)) #Initialize TCP server connection

        #socket data receive
        self.data_receive_thread = threading.Thread(target=self.get_res)
        self.data_receive_thread.start()

    # init robot feed pose
    def set_pose(self, xGoal, yGoal, orientation_z, orientation_w,covariance):
        pose = PoseWithCovarianceStamped()
        pose.header.seq = 0
        pose.header.stamp.secs = 0
        pose.header.stamp.nsecs = 0
        pose.header.frame_id = 'map'
        pose.pose.pose.position.x = xGoal
        pose.pose.pose.position.y = yGoal
        pose.pose.pose.position.z = 0.0
        q = quaternion_from_euler(0, 0, 1.57)  
        pose.pose.pose.orientation.x = 0.0
        pose.pose.pose.orientation.y = 0.0
        pose.pose.pose.orientation.z = orientation_z
        pose.pose.pose.orientation.w = orientation_w
        pose.pose.covariance = [0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 
         0.0,0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 
         0.0,0.0, 0.0, 0.0, covariance]
        rospy.sleep(1)
        self.pub_setpose.publish(pose)
        rospy.loginfo('Published robot pose: %s' % pose)

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
  
    # speed command
    def pub_vel(self, x, y , theta):
        twist = Twist()
        twist.linear.x = x
        twist.linear.y = y
        twist.linear.z = 0
        twist.angular.x = 0
        twist.angular.y = 0
        twist.angular.z = theta
        self.pub.publish(twist)
    
    #voltage Callback
    def voltage_callback(self, msg):
        global interrupt_voltage_receive
        voltage = msg.data
        if interrupt_voltage_receive:
            rospy.loginfo(f"Voltage: {voltage} V")
            self.socket_connect(f"Voltage: {voltage} V")
            #rospy.loginfo("Interrupting /Voltage topic receive")
            #self.voltage_subscriber.unregister()  # Unsubscribe Voltage topic

    # socket
    def socket_connect(self, data):
        self.client_socket.sendall(data.encode())#Send TCP data
        print(data.encode())

    def get_res(self):
        while 1:
            global socket_res
            data = self.client_socket.recv(1024).decode('UTF-8')
            socket_res = data
            #print(f"Received response from server: {socket_res}")
            time.sleep(0.2)

if __name__ == '__main__':
    #init navigation
    map_navigation = MapNavigation()

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
    (8.408796310424805, 2.4658150672912598, -0.8522438688498349,0.5231447103888803),#back_desk_1
    (5.288103103637695, -0.5398174524307251, 0.9999992606596254, 0.001216009951635678), #back_corner2
    (1.2207894325256348, -0.3337854743003845, -0.9999894369910013, 0.004596292682190771),  # testing room 
    ]

    try:
        while True:
            if socket_res == 'goToLoad':
                socket_res = None      
                #navigate to target
                for goal in goals:
                    x_goal, y_goal, orientation_z, orientation_w = goal
                    flag_feed_goalReached = map_navigation.moveToGoal(x_goal, y_goal, orientation_z, orientation_w)
                time.sleep(2)  
            
                #fixed route to meeting room
                map_navigation.pub_vel(0.2,0,0)
                time.sleep(16)
                map_navigation.pub_vel(0,0,0)
                time.sleep(3)
                map_navigation.socket_connect('finish_load_navigate')

            if socket_res == 'goToUnload':
                socket_res = None
                #go_back
                map_navigation.pub_vel(-0.2,0,0)
                time.sleep(14)
                map_navigation.pub_vel(0,0,-0.7)
                time.sleep(5)
                #navigate to target
                for goal in back_goals:
                    x_goal, y_goal, orientation_z, orientation_w = goal
                    flag_feed_goalReached = map_navigation.moveToGoal(x_goal, y_goal, orientation_z, orientation_w)
                time.sleep(2)

                ##fixed route to testing room 
                map_navigation.pub_vel(0,0,0.7) #turn around
                time.sleep(2.2)
                map_navigation.pub_vel(0,0,0)   #stop
                time.sleep(3)
                map_navigation.pub_vel(0.2,0,0) #go straight
                time.sleep(11)
                map_navigation.pub_vel(0,0,0)   #stop
                time.sleep(3)
                map_navigation.socket_connect('finish_unload_navigate')

            if socket_res == 'Unloaddown':    
                map_navigation.pub_vel(-0.2,0,0)
                time.sleep(11)
                map_navigation.pub_vel(0,0,0.7)
                time.sleep(2.5)
                map_navigation.pub_vel(0,0,0)
                time.sleep(3)
                socket_res = 'goToLoad'

            if socket_res == 'batteryState':
                socket_res = None
                pass
                #interrupt_voltage_receive = True

            if socket_res == 'unsubscribebatteryState':
                socket_res = None
                pass
                #interrupt_voltage_receive = False
                             
    except rospy.ROSInterruptException:
        pass
