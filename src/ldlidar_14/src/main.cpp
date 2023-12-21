#include <iostream>
#include "cmd_interface_linux.h"
#include <stdio.h>
#include "lipkg.h"
#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include "transform.h"
#include <vector>
#define ANGLE_TO_RADIAN(angle) ((angle)*3141.59/180000)
bool flag_parted=false;
std::vector<int> disable_angle_min_range,disable_angle_max_range;
float change_angle;

int main(int argc , char **argv)
{
	ros::init(argc, argv, "product");
	ros::NodeHandle nh("~");                    /* create a ROS Node */
	std::string product;
	std::string port_name="/dev/wheeltec_lidar";
	std::vector<int> disable_angle_min_range={0};
	std::vector<int> disable_angle_max_range={0};
	float scan_duration;
	float scan_time;
	

	ros::Time start_scan_time;
    	ros::Time end_scan_time;
	nh.getParam("product", product);

	nh.getParam("flag_parted", flag_parted);
	nh.getParam("port_name", port_name);
	
  	nh.param<std::vector<int>>("disable_min", disable_angle_min_range, {0});
  	nh.param<std::vector<int>>("disable_max", disable_angle_max_range, {0});

  	for(int j=0;j<disable_angle_min_range.size();++j)
	{

		change_angle=360-disable_angle_min_range[j];
		disable_angle_min_range[j]=360-disable_angle_max_range[j];
		disable_angle_max_range[j]=change_angle;
		
	}


	LiPkg * pkg;

	
	int32_t ver=0;

	if(strcmp(product.c_str(),"LD00")==0)
	{
		ver = 0;
		pkg = new LD00_LiPkg; 
	}else if(strcmp(product.c_str(),"LD03")==0)
	{
	    ver = 3;
		pkg = new LD03_LiPkg;
	}
	else if(strcmp(product.c_str(),"LD08")==0)
	{
		ver = 8;
		pkg = new LD08_LiPkg;
	}else if(strcmp(product.c_str(),"LD14")==0)
	{
		ver = 9;
		pkg = new LD14_LiPkg; 
	}
	else
	{
		std::cout << "USAGE: roslaunch ldlidar LD0* "<<std::endl;
		std::cout << "Usage : LD0* ->  LD00 LD03 LD08 LD14  "<<std::endl; /* print Usage */
		return -1;
	}
	 
    /* test code */
	#ifdef USE_SLBF
		std::cout << "USE_SLBF"<<std::endl; 
	#endif
	#ifdef USE_SLBI
		std::cout << "USE_SLBI"<<std::endl; 
	#endif

	char product_ver[5]={0};   				/*production version*/
	strcpy(product_ver,product.c_str());
	
	char topic_name[20]={0};
	strcat(topic_name,product_ver); 
	strcat(topic_name,"/LDLiDAR");
	ros::Publisher lidar_pub = nh.advertise<sensor_msgs::LaserScan>(topic_name, 1); /*create a ROS topic */


    CmdInterfaceLinux cmd_port(ver);
    std::vector<std::pair<std::string, std::string> > device_list;
    //std::string port_name;
    cmd_port.GetCmdDevices(device_list);

	if(port_name.empty() == false)
	{
		std::cout<<"FOUND LiDAR_" <<  product_ver  <<std::endl;
		cmd_port.SetReadCallback([&pkg](const char *byte, size_t len) {
			if(pkg->Parse((uint8_t*)byte, len))
			{
				pkg->AssemblePacket();  
			}
		});
		cmd_port.Open(port_name);
		sensor_msgs::LaserScan scan;
		scan.header.stamp = ros::Time::now();
		scan.header.frame_id = "laser";
		scan.range_min = 0.3;
		scan.range_max = 30.0;

		while (ros::ok()) 
		{
			if (pkg->IsFrameReady())
			{				
				FrameData data = pkg->GetFrameData();
				start_scan_time = ros::Time::now();
				scan_time =(start_scan_time - end_scan_time ).toSec();
                scan_duration = scan_time / data.len;  

				scan.angle_min = ANGLE_TO_RADIAN(data.angle_min)-3.1415926;
				scan.angle_max = ANGLE_TO_RADIAN(data.angle_max)-3.1415926;
				scan.angle_increment = (scan.angle_max - scan.angle_min)/data.len;
				scan.ranges.resize(data.len);
				scan.intensities.resize(data.len);

				scan.header.stamp = ros::Time::now();
				//static uint16_t last_times_stamp = 0;
				//uint16_t dealt_times_stamp = 0;
				//uint16_t tmp_times_stamp = ros::Time::now();
				//if (tmp_times_stamp - last_times_stamp < 0){
				//	dealt_times_stamp = tmp_times_stamp - last_times_stamp + 30000; 
				//}else
				//{
				//	dealt_times_stamp = tmp_times_stamp - last_times_stamp;
				//}
				//last_times_stamp = tmp_times_stamp;
				//scan.time_increment = dealt_times_stamp;
				scan.scan_time=scan_time;
				scan.time_increment = scan_duration;
				for(int i=0;i<data.len;i++)
				{

					scan.ranges[i] = data.distance[i]/1000.f;
					scan.intensities[i] = data.intensities[i];
					if (scan.ranges[i] <= scan.range_min || scan.ranges[i] >= scan.range_max || (scan.ranges[i] ==0.0)){
	                   scan.ranges[i] = std::numeric_limits<float>::infinity();  // 如果不在角度不在扫描范围内，将该角度对应的目标距离置为无穷大
					}
					if(flag_parted){
						if(disable_angle_min_range.size()==disable_angle_max_range.size())
    					{
							for(int j=0;j<disable_angle_min_range.size();++j)
							{
    							if(disable_angle_min_range[j]>disable_angle_max_range[j]){
									if((i<(disable_angle_max_range[j]*data.len / 360))||(i>=(disable_angle_min_range[j]*data.len / 360))){
										scan.ranges[i] = std::numeric_limits<float>::infinity();  // 如果不在角度不在扫描范围内，将该角度对应的目标距离置为无穷大
										scan.intensities[i] = 0;
										}
									}
								else{
									if((i>(disable_angle_min_range[j]*data.len / 360))&&(i<=(disable_angle_max_range[j]*data.len / 360))){
										scan.ranges[i] = std::numeric_limits<float>::infinity();  // 如果不在角度不在扫描范围内，将该角度对应的目标距离置为无穷大
										scan.intensities[i] = 0;
										}
									}
						}
					}
				}
				}
				lidar_pub.publish(scan);
				end_scan_time = ros::Time::now();
				// printf("min:%f,max:%f,len:%d\n",data.angle_min,data.angle_max,data.len);
				// std::cout << "lidar speed (Hz): " << pkg->GetSpeed() << std::endl;
				//std::cout << "lidar dealt time stamp: " << dealt_times_stamp << std::endl;
				
			}
		}
	}
	else
	{
		std::cout<<"Can't find LiDAR"<< argv[1] << std::endl;
	}


    return 0;
}

