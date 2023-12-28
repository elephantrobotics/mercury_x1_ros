
#include <ros/ros.h>
#include <signal.h>
#include <string.h>
#include <iostream>
#include <std_msgs/Int8.h>
#include <stdlib.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PointStamped.h>
#include <std_msgs/String.h>
#include <stdio.h>

ros::Publisher rrt_flag_pub; // 自主建图开启标志位发布者
ros::Publisher overmap_flag_pub; //建图完成标志位发布者

std::string rrt_flag = "rrt_flag";

int overmap_flag =0;
int rrt_success = 0;
int count = 0 ;
int if_start = 0;

void start_Callback(geometry_msgs::PointStamped msg)
{
	if_start++;
}


void odom_Callback(nav_msgs::Odometry msg)
{
	if(if_start > 4)
	{
		if(msg.twist.twist.linear.x < 0.005 && msg.twist.twist.angular.z < 0.005)
		{
			count++;
		}
		else 
		{
			count = 0;
		}
	}
}

int main(int argc, char** argv)
{

	ros::init(argc, argv, "wait_for_fin");    

	ros::NodeHandle nha;   
	
	ros::Subscriber speed_sub = nha.subscribe("/odom",1,odom_Callback);

	ros::Publisher back_pub = nha.advertise<geometry_msgs::PoseStamped>("/move_base_simple/goal",1);

	ros::Subscriber start_sub = nha.subscribe("/clicked_point",1,start_Callback);

	rrt_flag_pub = nha.advertise<std_msgs::Int8>("rrt_flag", 1);

	overmap_flag_pub = nha.advertise<std_msgs::Int8>("overmap_flag", 1);
	int waiting_time ;
	ros::param::param<int>("/wait_for_fin/waiting_time", waiting_time, 60);

	geometry_msgs::PoseStamped origin;
	origin.header.seq = 0;
	origin.header.frame_id = "map";
	origin.pose.position.x = 0;
	origin.pose.position.y = 0;
	origin.pose.position.z = 0;
	origin.pose.orientation.x = 0;
	origin.pose.orientation.y = 0;
	origin.pose.orientation.z = 0;
	origin.pose.orientation.w = 1;


	double rate = 1;    
	ros::Rate loopRate(rate);

	while(ros::ok())
	{
		if(count == waiting_time)
		{
			system("dbus-launch gnome-terminal -- roslaunch turn_on_tringai_robot map_saver.launch");
			system("dbus-launch gnome-terminal -- rosnode kill /assigner");
		}
		
		if(count == (waiting_time+5))
		{
			back_pub.publish(origin);
			std_msgs::Int8 overmap_flag_msg;
			overmap_flag_msg.data = 1;
			overmap_flag_pub.publish(overmap_flag_msg);//建图完成标志位发布
			printf("a=%d",overmap_flag_msg.data);
			break;
		}

		printf("count=%d\n",count);
		// printf("if_start=%d\n",if_start);
		if(rrt_success == 0)
		{
		std_msgs::Int8 rrt_flag_msg;
		rrt_flag_msg.data = 1;
		sleep(2);
		rrt_flag_pub.publish(rrt_flag_msg);//自主建图开启成功标志位发布
		printf("a=%d",rrt_flag_msg.data);
		rrt_success = 1;
		}
		ros::spinOnce();
		loopRate.sleep();      
	}
	return 0;


}

