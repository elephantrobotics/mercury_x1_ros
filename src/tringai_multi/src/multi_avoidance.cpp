/**************************************************************************
功能：避障
**************************************************************************/
#include <ros/ros.h>
#include <signal.h>
#include <geometry_msgs/Twist.h>
#include <string.h>
#include <math.h>
#include <iostream>
#include <tringai_multi/avoid.h>
#include <std_msgs/Int32.h>
#include <std_msgs/Int8.h>
#include <std_msgs/String.h>


using namespace std;
 
geometry_msgs::Twist cmd_vel_msg;    //速度控制信息数据
geometry_msgs::Twist cmd_vel_avoid;    //速度控制信息数据
geometry_msgs::Twist cmd_vel_data;    //速度控制信息数据

float distance1=100;    //障碍物距离
float dis_angleX=0;    //障碍物方向,前面为0度角，右边为正，左边为负	
double safe_distence=0.5;
double danger_distence=0.2;
double danger_angular=0.785;
double avoidance_kv=0.2;
double avoidance_kw=0.3;
double max_vel_x=1.5;
double min_vel_x=0.05;
double max_vel_theta=1.5;
double min_vel_theta=0.05;

/**************************************************************************
函数功能：sub回调函数
入口参数：  laserTracker.py
返回  值：无
**************************************************************************/
void current_position_Callback(const tringai_multi::avoid& msg)	
{
	distance1 = msg.distance;
	dis_angleX = msg.angleX;
	if(dis_angleX>0)
		dis_angleX=3.1415-dis_angleX;
	else
		dis_angleX=-(dis_angleX+3.1415);
}

/**************************************************************************
函数功能：底盘运动sub回调函数（原始数据）
入口参数：cmd_msg  command_recognition.cpp
返回  值：无
**************************************************************************/
void cmd_vel_ori_Callback(const geometry_msgs::Twist& msg)
{
	cmd_vel_msg.linear.x = msg.linear.x;
	cmd_vel_msg.angular.z = msg.angular.z;

	cmd_vel_data.linear.x = msg.linear.x;
	cmd_vel_data.angular.z = msg.angular.z;
}


/**************************************************************************
函数功能：主函数
入口参数：无
返回  值：无
**************************************************************************/
int main(int argc, char** argv)
{
	int temp_count = 0;    //计数变量
	ros::init(argc, argv, "avoidance");    //初始化ROS节点

	ros::NodeHandle node;    //创建句柄

	/***创建底盘速度控制话题发布者***/
	ros::Publisher cmd_vel_Pub = node.advertise<geometry_msgs::Twist>("cmd_vel", 1);

	/***创建底盘运动话题订阅者***/
	ros::Subscriber vel_sub = node.subscribe("cmd_vel_ori", 1, cmd_vel_ori_Callback);

  	/***创建障碍物方位话题订阅者***/
	ros::Subscriber current_position_sub = node.subscribe("object_tracker/current_position", 10, current_position_Callback);

	node.param<double>("safe_distence", safe_distence,0.5);
	node.param<double>("danger_distence", danger_distence,0.2);
	node.param<double>("danger_angular", danger_angular,0.785);
	node.param<double>("avoidance_kv", avoidance_kv,0.2);
	node.param<double>("avoidance_kw", avoidance_kw,0.3);
	node.param<double>("max_vel_x", max_vel_x,1.5);
	node.param<double>("min_vel_x", min_vel_x,0.05);
	node.param<double>("max_vel_theta", max_vel_theta,1.5);
	node.param<double>("min_vel_theta", min_vel_theta,0.05);

	double rate2 = 10;    //频率10Hz
	ros::Rate loopRate2(rate2);

 
	while(ros::ok())
	{
		ros::spinOnce();
		avoidance_kw = fabs(avoidance_kw);
		if(distance1<safe_distence && distance1>danger_distence)		//障碍物在安全距离和危险距离时，调整速度角度避让障碍物
		{
			ROS_INFO("distance1 less then 0.6 ");
			printf("distance1= %f\n",distance1);
			cmd_vel_msg.linear.x = cmd_vel_data.linear.x - avoidance_kv*cos(dis_angleX)/distance1;//原始速度，减去一个后退的速度
			if(dis_angleX<0)avoidance_kw=-avoidance_kw;											//车左右边的障碍物避障，车头调转方向不一致
			cmd_vel_msg.angular.z = cmd_vel_data.angular.z + avoidance_kw*cos(dis_angleX)/distance1;
		}
		else if(distance1<danger_distence)				//障碍物在危险距离之内时，以远离障碍物为主
		{
			ROS_INFO("distance1 less then 0.3 ");
			printf("distance1= %f\n",distance1);
			cmd_vel_msg.linear.x = - avoidance_kv*cos(dis_angleX)/distance1;
			if(dis_angleX<0)avoidance_kw=-avoidance_kw;
			cmd_vel_msg.angular.z = avoidance_kw*cos(dis_angleX)/distance1;
		}
		else										//其他情况直接输出原始速度
		{
			cmd_vel_msg.linear.x = cmd_vel_data.linear.x;
			cmd_vel_msg.angular.z = cmd_vel_data.angular.z;
		}

		//速度限制
		if(cmd_vel_msg.linear.x > max_vel_x)
			cmd_vel_msg.linear.x=max_vel_x;
		else if(cmd_vel_msg.linear.x < -max_vel_x)
			cmd_vel_msg.linear.x=-max_vel_x;
		if(fabs(cmd_vel_msg.linear.x) < min_vel_x)
			cmd_vel_msg.linear.x=0;
		if(cmd_vel_msg.angular.z > max_vel_theta)
			cmd_vel_msg.angular.z=max_vel_theta;
		else if(cmd_vel_msg.angular.z < -max_vel_theta)
			cmd_vel_msg.angular.z=-max_vel_theta;
		if(fabs(cmd_vel_msg.angular.z) < min_vel_theta)
			cmd_vel_msg.angular.z=0;

		cmd_vel_Pub.publish(cmd_vel_msg);
		ros::spinOnce();
		loopRate2.sleep();
	} 

	return 0;
}
