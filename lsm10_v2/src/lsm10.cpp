/*******************************************************
@company: Copyright (C) 2021, Leishen Intelligent System
@product: LSM10
@filename: lsm10.cpp
@brief:
@version:       date:       author:     comments:
@v1.0           21-2-4      yao          new
*******************************************************/
#include "lsm10_v2/lsm10.h"
#include <stdio.h>
#include <signal.h> 
#include<lsm10_v2/difop.h>

namespace ls{
LSM10 * LSM10::instance()
{
  static LSM10 obj;
  return &obj;
}

LSM10::LSM10()
{
  int code = 0;
  initParam();
  pub_ = n_.advertise<sensor_msgs::LaserScan>(scan_topic_, 3);
  device_pub = n_.advertise<lsm10_v2::difop>("difop_information", 100);
  
  serial_ = LSIOSR::instance(serial_port_, baud_rate_);
  code = serial_->init();
  if(code != 0)
  {
	  printf("open_port %s ERROR !\n", serial_port_.c_str());
	  ros::shutdown();
	  exit(0);
  }
  printf("open_port %s  OK !\n", serial_port_.c_str());

  recv_thread_ = new boost::thread(boost::bind(&LSM10::recvThread, this));
  pubscan_thread_ = new boost::thread(boost::bind(&LSM10::pubScanThread, this));
}

LSM10::~LSM10()
{
  printf("start LSM10::~LSM10()\n");

  is_shutdown_ = true;

  pubscan_thread_->interrupt();
  pubscan_thread_->join();
  pubscan_thread_ = NULL;
  delete pubscan_thread_;

  recv_thread_->interrupt();
  recv_thread_->join();

  recv_thread_ = NULL;
  delete recv_thread_;

  serial_->close();
  serial_ = NULL;
  delete serial_;
  printf("end LSM10::~LSM10()\n");
}

void LSM10::initParam()
{
  std::string scan_topic = "/scan";
  std::string frame_id = "laser_link";
  std::string port = "/dev/ttyUSB0";
  ros::NodeHandle nh("~");
  nh.param("scan_topic", scan_topic_, scan_topic);
  nh.param("frame_id", frame_id_, frame_id);
  nh.param("serial_port", serial_port_, port);
  nh.param("baud_rate", baud_rate_, 460800);
  nh.param("min_distance", min_distance, 0.3);
  nh.param("max_distance", max_distance, 100.0);
  nh.param("truncated_mode", truncated_mode_, 0);
  nh.param<std::vector<int>>("disable_min", disable_angle_min_range,disable_angle_range_default);
  nh.param<std::vector<int>>("disable_max", disable_angle_max_range,disable_angle_range_default);
  /*默认使用disable vector
  nh.param("angle_disable_min", angle_disable_min,0.0);
  nh.param("angle_disable_max", angle_disable_max, 90.0);
  */
	//默认扫描0-360度所有点
	angle_able_min = 0;
	angle_able_max = 360;
  /*while(angle_disable_min<0)
	angle_disable_min+=360;
  while(angle_disable_max<0)
	angle_disable_max+=360;
  while(angle_disable_min>360)
	angle_disable_min-=360;
  while(angle_disable_max>360)
	angle_disable_max-=360;
  if(angle_disable_max == 0.0 && angle_disable_min == 0.0)
  {
	angle_able_min = 0;
	angle_able_max = 360;
  }
  else
  {
	if(angle_disable_min<angle_disable_max && angle_disable_min !=0.0)
	{
		angle_able_min = angle_disable_max;
		angle_able_max = angle_disable_min+360;
	}
	if (angle_disable_min<angle_disable_max && angle_disable_min == 0.0)
	{
		angle_able_min = angle_disable_max;
		angle_able_max = 360;
	}
	if (angle_disable_min>angle_disable_max )
	{
		angle_able_min = angle_disable_max; //30
		angle_able_max = angle_disable_min; //120
	}
  }*/
  is_shutdown_ = false;
  data_len_ = 180;
  points_size_ = 360 * 42 / 15;
  scan_points_.resize(points_size_);
}

int LSM10::getScan(std::vector<ScanPoint> &points, ros::Time &scan_time, float &scan_duration)
{
  boost::unique_lock<boost::mutex> lock(mutex_);
  points.assign(scan_points_bak_.begin(), scan_points_bak_.end());
  scan_time = pre_time_;
  scan_duration = (time_ - pre_time_).toSec();
}

int LSM10::getVersion(std::string &version)
{
  version = "lsm10_v1_0";
  return 0;
}


void LSM10::recvThread()
{
  char * packet_bytes = new char[data_len_];
  int idx = 0;
  int link_time = 0;
  double degree;
  double last_degree = 0.0;
  
  boost::posix_time::ptime t1,t2;
  t1 = boost::posix_time::microsec_clock::universal_time();
  
  while(!is_shutdown_&&ros::ok()){

	int count = serial_->read(packet_bytes, 92);
	
	if(count <= 0) 
		link_time++;
	else
		link_time = 0;
	
	if(link_time > 10000)
	{
		serial_->close();
		int ret = serial_->init();
		if(ret < 0)
		{
			ROS_WARN("serial open fail");
			usleep(200000);
		}
		link_time = 0;
	}
  
	
	for (int i = 0; i < count; i++)
	{
		int k = packet_bytes[i];
		k < 0 ? k += 256 : k;
		int y = packet_bytes[i + 1];
		y < 0 ? y += 256 : y;

		int k_1 = packet_bytes[i + 2];
		k_1 < 0 ? k_1 += 256 : k_1;
		int y_1 = packet_bytes[i + 3];
		y_1 < 0 ? y_1 += 256 : y_1;
		
		if (k == 0xA5 && y == 0x5A)					 //应答距离
		{
			if(i != 0)
			{
				memcpy(packet_bytes, packet_bytes + 92 - i, 92 - i);
				serial_->read(packet_bytes + 92 - i, i);
			}
			
			int s = packet_bytes[i + 2];
			s < 0 ? s += 256 : s;
			int z = packet_bytes[i + 3];
			z < 0 ? z += 256 : z;
			
			boost::unique_lock<boost::mutex> lock(mutex_);

			//if ((s * 256 + z) / 100.f > 360)
			//	degree = 0;
			//else
				degree = (s * 256 + z) / 100.f;

			//转速
			lsm10_v2::difopPtr Difop_data = lsm10_v2::difopPtr(
						new lsm10_v2::difop());
			s = packet_bytes[i + 4];
			s < 0 ? s += 256 : s;
			z = packet_bytes[i + 5];
			z < 0 ? z += 256 : z;
			
			Difop_data->MotorSpeed = float(2500000.0 / (s * 256 + z));
			
			device_pub.publish(Difop_data);
			
			int invalidValue = 0;
			for (size_t num = 2; num < 86; num+=2)
			{
				int s = packet_bytes[i + num + 4];
				s < 0 ? s += 256 : s;
				int z = packet_bytes[i + num + 5];
				z < 0 ? z += 256 : z;
				
				if ((s * 256 + z) != 0xFFFF)
				{
					scan_points_[idx].range = double(s * 256 + (z)) / 1000.f;
					scan_points_[idx].intensity = 0;
					idx++;
				}
				else
				{
					invalidValue++;
				}
			}

			invalidValue = 42 - invalidValue;

			for (size_t i = 0; i < invalidValue; i++)
			{
				if ((degree + (15.0 / invalidValue * i)) > 360)
					scan_points_[idx-invalidValue+i].degree = degree + (15.0 / invalidValue * i) - 360;
				else
					scan_points_[idx-invalidValue+i].degree = degree + (15.0 / invalidValue * i);
			}
			
			lock.unlock();
			
			//if (degree > 359.5) 
			if (degree < last_degree) 	
			{
				idx = 0;
				/*
				for(int k=0;k<scan_points_.size();k++)
				{	
					
					if(angle_disable_min < angle_disable_max)
					{
						if(scan_points_[k].degree > angle_disable_min && scan_points_[k].degree < angle_disable_max)
							scan_points_[k].range = 0;
					}
					else if(angle_disable_min != 0.0 || angle_disable_max!= 0.0)
					{
						if(scan_points_[k].degree > angle_disable_min || scan_points_[k].degree < angle_disable_max)
							scan_points_[k].range = 0;
					}
					
					if(scan_points_[k].range < min_distance || scan_points_[k].range > max_distance)
						scan_points_[k].range = 0;
				}
				*/
				//2022_01_08修改显示方法，能够完成负数输入。
				for(int k=0;k<scan_points_.size();k++)
				{	
					/*默认使用disable vector
					if(angle_able_max > 360)
					{	
						if((360-scan_points_[k].degree) > (angle_able_max - 360) && (360-scan_points_[k].degree) < angle_able_min)
							scan_points_[k].range = 0;
					}
					else 
					{
						if((360-scan_points_[k].degree) > angle_able_max || (360-scan_points_[k].degree) < angle_able_min)
							scan_points_[k].range = 0;
					}
					*/
					if(scan_points_[k].range < min_distance || scan_points_[k].range > max_distance)
						scan_points_[k].range = 0;
				}
				boost::unique_lock<boost::mutex> lock(mutex_);
				scan_points_bak_.resize(scan_points_.size());
				scan_points_bak_.assign(scan_points_.begin(), scan_points_.end());
				for(int k=0; k<scan_points_.size(); k++)
				{
					scan_points_[k].range = 0;
					scan_points_[k].degree = 0;
				}
				pre_time_ = time_;
				lock.unlock();
				pubscan_cond_.notify_one();
				time_ = ros::Time::now();
			}
			last_degree = degree;
			
		}	
		else if (k == 0xA5 && y == 0xFF && k_1 == 00 && y_1 == 0x5A)
		{
			/*lsm10_v2::difopPtr Difop_data = lsm10_v2::difopPtr(
						new lsm10_v2::difop());
 
			//温度
			int s = packet_bytes[i + 12];
			s < 0 ? s += 256 : s;
			int z = packet_bytes[i + 13];
			z < 0 ? z += 256 : z;
			Difop_data->Temperature = (float(s * 256 + z) / 4096 * 330 - 50);

			//高压
			s = packet_bytes[i + 14];
			s < 0 ? s += 256 : s;
			z = packet_bytes[i + 15];
			z < 0 ? z += 256 : z;
			Difop_data->HighPressure = (float(s * 256 + z) / 4096 * 3.3 * 101);

			//转速
			s = packet_bytes[i + 16];
			s < 0 ? s += 256 : s;
			z = packet_bytes[i + 17];
			z < 0 ? z += 256 : z;
			Difop_data->MotorSpeed = (float(1000000 / (s * 256 + z) / 24));
			
			device_pub.publish(Difop_data);*/
		}
	}
  }
  if (packet_bytes)
  {
    packet_bytes = NULL;
    delete packet_bytes;
  }
}

void LSM10::pubScanThread()
{
  bool wait_for_wake = true;
  boost::unique_lock<boost::mutex> lock(pubscan_mutex_);

  while (ros::ok() && !is_shutdown_)
  {
    while (wait_for_wake)
    {
      pubscan_cond_.wait(lock);
      wait_for_wake = false;
    }

    std::vector<ScanPoint> points;
    ros::Time start_time;
    float scan_time;
    this->getScan(points, start_time, scan_time);
    int count = points.size();
    if (count <= 0)
      continue;
	int scan_num = (angle_able_max-angle_able_min)/360*count;
    sensor_msgs::LaserScan msg;
    msg.header.frame_id = frame_id_;
    msg.header.stamp = start_time;
	
	/*默认scan angle为-pi--pi不会打印able angle
	if(angle_able_max >360)
	{
	  msg.angle_min = 2 * M_PI * (angle_able_min-360) / 360;
    msg.angle_max = 2 * M_PI * (angle_able_max-360) / 360;
	}
	else 
	{
    msg.angle_min = 2 * M_PI * angle_able_min / 360;
    msg.angle_max = 2 * M_PI * angle_able_max / 360;
	}
	*/
	
		msg.angle_min = -M_PI;
    msg.angle_max =  M_PI;
	  msg.angle_increment = 2 * M_PI / count;
    msg.range_min = min_distance;
    msg.range_max = max_distance;
    msg.ranges.resize(scan_num);
    msg.intensities.resize(scan_num);
    msg.scan_time = scan_time;
    msg.time_increment = scan_time / (double)(count - 1);
	
	for(int k=0; k<scan_num; k++)
	{
		msg.ranges[k] = std::numeric_limits<float>::infinity();
        msg.intensities[k] = 0;
	}
	int start_num = floor(angle_able_min * 42 / 15);
	int end_num = floor(angle_able_max * 42 / 15);

	for (int i = 0; i < count; i++) {
		int point_idx = (360-points[i].degree) * 42 / 15;
		if(point_idx<(end_num-1008))
			point_idx += 1008;
		point_idx =  point_idx - start_num;
		if(point_idx < 0 || point_idx > scan_num) 
			continue;
		if (points[i].range == 0.0) {
			msg.ranges[point_idx] = std::numeric_limits<float>::infinity();
			msg.intensities[point_idx] = 0;
		}
		else {
			double dist = points[i].range;
			msg.ranges[point_idx] = (float) dist;
			msg.intensities[point_idx] = points[i].intensity;
		}
		if(truncated_mode_==1)
			{
				for (int j = 0; j < disable_angle_max_range.size(); ++j) {
          if ((point_idx >= (disable_angle_min_range[j] * count / 360) ) &&
              (point_idx <= (disable_angle_max_range[j] * count / 360 ))) {
            msg.ranges[point_idx] = std::numeric_limits<float>::infinity();
            msg.intensities[point_idx] = 0;
          }
        }
			}
    }

    pub_.publish(msg);
    wait_for_wake = true;
    }
  }
}


void handleSig(int signo)
{
  printf("handleSig\n");
  ros::shutdown();
  exit(0);
}

int main(int argv, char **argc)
{
  signal(SIGINT, handleSig);
  signal(SIGTERM, handleSig);
  ros::init(argv, argc, "lsm10");
 
  ls::LSM10* lsm10 = ls::LSM10::instance();

  ros::spin();
  return 0;
}
