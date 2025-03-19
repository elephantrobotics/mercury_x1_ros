#!/usr/bin/env python3

"""[summary]
This file obtains the joint angle of the manipulator in ROS,
and then sends it directly to the real manipulator using `pymycobot` API.
This file is [slider_control.launch] related script.
Passable parameters:
      port1: Left arm serial port string. Default is "/dev/left_arm"
      port2: Right arm serial port string. Default is "/dev/right_arm"
      Baud rate: Left and right arm serial port baud rate. The default value is 115200.
"""
import math
import time
import rospy
from sensor_msgs.msg import JointState

from pymycobot.mercury import Mercury

# left arm
l = None

# right arm
r = None


def callback(data):
    # rospy.loginfo(rospy.get_caller_id() + "%s", data.position)

    data_list = []
    for index, value in enumerate(data.position):
        radians_to_angles = round(math.degrees(value), 2)
        data_list.append(radians_to_angles)
        
    print('data_list: {}'.format(data_list))
    left_arm = data_list[:6]
    right_arm = data_list[6:-2]
    middle_arm = data_list[-2:]
    # 为左臂和右臂的 J5 关节角度加上偏移量 90°
    left_arm[4] = left_arm[4] + 90
    right_arm[4] = right_arm[4] + 90
    print('left_angles: {}'.format(left_arm))
    print('right_angles: {}'.format(right_arm))
    print('middle_angles: {}'.format(middle_arm))
    
    l.send_angles(left_arm, 16, _async=True)
    r.send_angles(right_arm, 16, _async=True)
    r.send_angle(11, middle_arm[0], 16, _async=True)
    r.send_angle(12, middle_arm[1], 16, _async=True)


def listener():
    global l, r
    rospy.init_node("control_slider", anonymous=True)
    
    port1 = rospy.get_param("~port1", "/dev/left_arm")
    port2 = rospy.get_param("~port2", "/dev/right_arm")
    baud = rospy.get_param("~baud", 115200)
    print('left arm: {}, {}'.format(port1, baud))
    print('right arm: {}, {}'.format(port2, baud))
    l = Mercury(port1, baud)
    r = Mercury(port2, baud)
    time.sleep(0.05)
    l.set_movement_type(2)
    r.set_movement_type(2)
    time.sleep(0.05)
    l.set_vr_mode(1)
    r.set_vr_mode(1)
    time.sleep(0.05)
    l.set_filter_len(3, 20)
    r.set_filter_len(3, 20)
    time.sleep(0.05)
    rospy.Subscriber("joint_states", JointState, callback)
    # spin() simply keeps python from exiting until this node is stopped
    # spin()只是阻止python退出，直到该节点停止
    print("spin ...")
    rospy.spin()


if __name__ == "__main__":
    listener()
