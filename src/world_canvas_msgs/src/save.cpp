
#include <ros/ros.h>
#include <string.h>
#include <iostream>
#include <std_msgs/Int32.h>
#include <std_msgs/Int8.h>
#include <world_canvas_msgs/SaveMap.h>


bool save_map_callback(world_canvas_msgs::SaveMap::Request &req, world_canvas_msgs::SaveMap::Response &res)
{

	system("dbus-launch gnome-terminal -- roslaunch turn_on_tringai_robot map_saver.launch");
	return true;
}


int main(int argc, char** argv)
{

	ros::init(argc, argv, "save");    

	ros::NodeHandle nha;    
	
	ros::ServiceServer service_save_map = nha.advertiseService("/save_map",save_map_callback);
//	ros::ServiceServer service_set_major_mic = ndHandle.advertiseService("set_major_mic_srv", Set_Major_Mic);
	
	int i = 0;
	int rate = 10;    
	ros::Rate loopRate(rate);

	while(ros::ok())
	{
		if(i > 9)
		{
			printf("11111111\n");
			i = 0;
		}
		else i++;

		ros::spinOnce();
		loopRate.sleep();       
	}
	return 0;

}

