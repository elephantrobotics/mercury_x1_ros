#!/usr/bin/env python
#coding=UTF-8
import time
import threading
import time
import socket
import time
import fcntl
import struct
import signal
import json  
import rospy
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
        rospy.init_node('map_navigation', anonymous=False)
        self.should_exit = False

        # rospublisher
        self.pub = rospy.Publisher('/cmd_vel',Twist, queue_size=10)
        self.pub_setpose = rospy.Publisher('/initialpose',PoseWithCovarianceStamped, queue_size=10)
        self.pub_cancel = rospy.Publisher('/move_base/cancel', GoalID, queue_size=10)
        self.voltage_subscriber = rospy.Subscriber("/Voltage", Float32, self.voltage_callback) #Create a battery-voltage topic subscriber

        #Create TCP/IP socket
        self.ifname = b"eth0"
        self.server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.host = socket.inet_ntoa(fcntl.ioctl(self.server_socket.fileno(), 0x8915, struct.pack('256s', self.ifname[:15]))[20:24])  #IP
        self.port = 9000  # port       
        print("ip: {} port: {}".format(self.host, self.port))
        
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
    
    # move_base
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
        conn.send(data.encode("UTF-8"))
        print(data.encode())

if __name__ == '__main__':
    # goals
    goals = [
    #(5.668717861175537, -0.3587464392185211, 0.28215484027894455, 0.9593688790591257),  # corner1
    #(6.833220481872559, 0.523029625415802, 0.2635481370520496, 0.9646462457587207),  # corner2
    (8.606064796447754, 2.346750497817993, 0.695545718232533, 0.7184818396093181),  # desk_1
    (8.754322052001953, 6.7733964920043945, 0.774108134204125, 0.6330533915547789),  # desk_2
    (6.705804824829102, 9.912127494812012, 0.7157463080949427, 0.6983603814997379),  # door
    (6.714288711547852, 11.711033668518066, 0.7038931321256822, 0.710305890828942),  # meeting room  
    ]
    
    #back
    back_goals =[
    (6.6801581382751465, 9.68292236328125,-0.3766679973756092, 0.9263483252821522), #back_door
    (8.751319885253906, 7.584722518920898, -0.7253242265223879,0.6884074131062939), #back_desk_2
    (8.408796310424805, 2.4658150672912598, -0.8522438688498349,0.5231447103888803),#back_desk_1
    (8.29449462890625, 0.49819743633270264, -0.7621448326238706,0.6474065601341497),#back_corner1
    # (5.288103103637695, -0.5398174524307251, 0.9999992606596254, 0.001216009951635678), #back_corner2
    # (1.2207894325256348, -0.3337854743003845, -0.9999894369910013, 0.004596292682190771),  # testing room 
    ]

    #goToPosition array
    goals_array = []

    #init navigation
    map_navigation = MapNavigation()

    # Bind IP and set a port
    map_navigation.server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1) #Set socket to be reusable
    map_navigation.server_socket.bind((map_navigation.host, map_navigation.port))
    map_navigation.server_socket.listen(3)
    map_navigation.server_socket.settimeout(None)
    print("Waiting for the client to connect")

    #signal handler
    def signal_handler(signal, frame):
        print("Ctrl+C pressed. Exiting...")
        map_navigation.should_exit = True  # Set exit flag to True
        conn.close()  #Close the connection to the client
        map_navigation.server_socket.close()  # Close server socket

    signal.signal(signal.SIGINT, signal_handler)

    while not map_navigation.should_exit:
        try:
            conn, address = map_navigation.server_socket.accept()
            print('Connected to: ', address)
            while conn:
                try:
                    msg = conn.recv(1024).decode('utf-8')           # Accept data and decode it according to utf-8
                    print('The data received is', msg)
                    print('The data type received is: ',type(msg))
                    if not msg:
                        break
                    msg = json.loads(msg)                          # Use json to parse the data and obtain dict data          
                    
                    if "goToPosition" in msg:
                        goals_array.clear()
                        for i in msg.keys():                
                            if isinstance(msg[i], dict):          #If it is a dictionary, it enters the inner loop, otherwise it skips.
                                for j in msg[i].keys():
                                    print('key ', j, ' with value ', msg[i][j])
                                    goals_array.append(msg[i][j]) 
                                print('goals_array',goals_array)
                                x_goal, y_goal, orientation_z, orientation_w = goals_array
                                #print('x_goal',x_goal, 'y_goal', y_goal, 'orientation_z',orientation_z, 'orientation_w', orientation_w)
                                flag_feed_goalReached = map_navigation.moveToGoal(x_goal, y_goal, orientation_z, orientation_w)
                            else:
                                print(msg[i])
                        pass #navigation 
                    
                    elif "agvOn" in msg:
                        pass 

                    elif "agvOff" in msg:
                        conn.close()  #Close the connection to the client
                        break

                    elif "batteryState" in msg:
                        pass

                    elif "goToLoad" in msg:
                        #navigate to target
                        for goal in goals:
                            x_goal, y_goal, orientation_z, orientation_w = goal
                            flag_feed_goalReached = map_navigation.moveToGoal(x_goal, y_goal, orientation_z, orientation_w)
                            time.sleep(2)
                        #fixed route to meeting room
                        for i in range(3):
                            map_navigation.pub_vel(0,0,0.57)
                            time.sleep(1)
                        map_navigation.pub_vel(0,0,0)
                        time.sleep(1)
                        map_navigation.socket_connect('finish_load_navigate')  

                    elif "goToUnload" in msg:
                        #go_back
                        # for i in range(8):
                        #     map_navigation.pub_vel(-0.2,0,0)
                        #     time.sleep(1)
                        # map_navigation.pub_vel(0,0,0)
                        # time.sleep(3)
                        
                        for i in range(3):
                            map_navigation.pub_vel(0,0,0.57)
                            time.sleep(1)
                        map_navigation.pub_vel(0,0,0)
                        time.sleep(1)
                        #navigate to target
                        for goal in back_goals:
                            x_goal, y_goal, orientation_z, orientation_w = goal
                            flag_feed_goalReached = map_navigation.moveToGoal(x_goal, y_goal, orientation_z, orientation_w)
                        time.sleep(2)
                        for i in range(6):
                            map_navigation.pub_vel(0,0,-0.5)
                            time.sleep(1)
                        map_navigation.pub_vel(0,0,0)
                        time.sleep(3)
                        map_navigation.socket_connect('finish_unload_navigate')

                    elif "turnRight" in msg:
                        for i in range(2):
                            map_navigation.pub_vel(0,0,-0.5)
                            time.sleep(1)
                        map_navigation.pub_vel(0,0,0)
                        time.sleep(3)
                        map_navigation.socket_connect('turnRight_ture')

                    elif "turnLeft" in msg:
                        for i in range(2):
                            map_navigation.pub_vel(0,0,0.5)
                            time.sleep(1)
                        map_navigation.pub_vel(0,0,0)
                        time.sleep(3)
                        map_navigation.socket_connect('turnLeft_ture')
                    
                    elif "goStraight" in msg:
                        for i in range(10):
                            map_navigation.pub_vel(0.2,0,0)
                            time.sleep(1)
                        map_navigation.pub_vel(0,0,0)
                        time.sleep(3)
                        map_navigation.socket_connect('goStraight_ture')

                    elif "goBack" in msg:
                        for i in range(10):
                            map_navigation.pub_vel(-0.2,0,0)
                            time.sleep(1)
                        map_navigation.pub_vel(0,0,0)
                        time.sleep(3)
                        map_navigation.socket_connect('goBack_ture')


                except socket.error as e:
                    print("Socket error:", e)
                    conn.close()
                    break

        except KeyboardInterrupt:
            print("Ctrl+C pressed. Closing the server.")
            map_navigation.server_socket.close()
            map_navigation.should_exit = True
