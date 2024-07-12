/**
 * @file /src/qnode.cpp
 *
 * @brief Ros communication central!
 *
 * @date February 2011
 **/

/*****************************************************************************
** Includes
*****************************************************************************/

#ifndef Q_MOC_RUN
#include <ros/ros.h>
#include <ros/network.h>
#endif

#include <string>
#include <std_msgs/String.h>
#include <sstream>
#include "../include/qt_ros_test/qnode.hpp"
#include <QObject>
#include <QDebug>

/*****************************************************************************
** Namespaces
*****************************************************************************/

namespace qt_ros_test {

/*****************************************************************************
** Implementation
*****************************************************************************/

QNode::QNode(int argc, char** argv ) :
	init_argc(argc),
	init_argv(argv)
    {
    init_param();
}

QNode::~QNode() {
    if(ros::isStarted()) {
      ros::shutdown(); // explicitly needed since we use ros::start();
      ros::waitForShutdown();
    }
	wait();
}

bool QNode::init() {
	ros::init(init_argc,init_argv,"qt_ros_test");
	if ( ! ros::master::check() ) {
		return false;
	}
	ros::start(); // explicitly needed since our nodehandle is going out of scope.
	// Add your ros communications here.
    init_pubsub();
	start();
	return true;
}

bool QNode::init(const std::string &master_url, const std::string &host_url) {
	std::map<std::string,std::string> remappings;
	remappings["__master"] = master_url;
	remappings["__hostname"] = host_url;
	ros::init(remappings,"qt_ros_test");
	if ( ! ros::master::check() ) {
		return false;
	}
	ros::start(); // explicitly needed since our nodehandle is going out of scope.
	ros::NodeHandle n;
	// Add your ros communications here.
    init_pubsub();
    start();
	return true;
}

void QNode::run() {
	ros::Rate loop_rate(1);
	int count = 0;
	while ( ros::ok() ) {
		ros::spinOnce();
	}
	std::cout << "Ros shutdown, proceeding to close the gui." << std::endl;
    Q_EMIT rosShutdown(); // used to signal the gui for a shutdown (useful to roslaunch)
}

void QNode::init_pubsub()
{
    ros::NodeHandle n;
    cmd_pub = n.advertise<geometry_msgs::Twist>("cmd_vel", 1000);
    image_transport::ImageTransport it_(n);
    image_sub=n.subscribe("/camera/rgb/image_raw",100,&QNode::image_callback,this);
    battery_sub = n.subscribe("/PowerVoltage", 5,&QNode::batteryCallback, this);
    Cmd_Vel_Sub = n.subscribe("/odom", 5,&QNode::speedCallback, this);
    ros::spinOnce();
}

void QNode::init_param()
{
    control_speed = 0; //#前进后退实际控制速度
    control_turn  = 0; //#转向实际控制速度
    control_HorizonMove = 0; //#横向移动实际控制速度
}

/*
 * 函数：按钮控制小车运动
 * car_model:0:麦轮小车  1：全向轮
 * keybutton：按钮返回值    u i o
 *                        j k l
 *                        m , .
 * speed:线速度
 * turn:角速度
*/
void QNode::pub_cmd(bool car_model, int keybutton, double speed, double turn)
{
    float x,th;
    switch (keybutton)
    {
    case 2:x=1;th=0;break;
    case 3:x=1;th=-1;break;
    case 4:x=0;th=1;break;
    case 6:x=0;th=-1;break;
    case 1:x=1;th=1;break;
    case 8:x=-1;th=0;break;
    case 9:
        if(car_model==0){x=-1;th=-1;}
        else if(car_model==1) {x=-1;th=1;}
        break;
    case 7:
        if(car_model==0){x=-1;th=1;}
        else if(car_model==1) {x=-1;th=-1;}
        break;
    case 5:x=0;th=0;break;
    default:x=0;th=0;break;
    }
    double target_speed = speed * x;
    double target_turn  = turn * th;
    double target_HorizonMove = speed*th;

    geometry_msgs::Twist twist;
    if(car_model==0)
    {
        twist.linear.x  = target_speed;
        twist.linear.y = 0;
        twist.linear.z = 0;
        twist.angular.x = 0;
        twist.angular.y = 0;
        twist.angular.z = target_turn;
    }
    else
    {
        twist.linear.x  = target_speed;
        twist.linear.y = target_HorizonMove;
        twist.linear.z = 0;
        twist.angular.x = 0;
        twist.angular.y = 0;
        twist.angular.z = 0;
    }
    qDebug()<<car_model<<keybutton<<speed<<turn<<target_speed<<target_turn<<target_HorizonMove;
    cmd_pub.publish(twist);
    ros::spinOnce();
}

void QNode::sub_camera(QString cameratopic)
{
    ros::NodeHandle n;
    image_transport::ImageTransport it_(n);
    qDebug()<<"image sub:";
    image_sub=n.subscribe(cameratopic.toStdString(),100,&QNode::image_callback,this);
    ros::spinOnce();
}
void QNode::image_callback(const sensor_msgs::ImageConstPtr &msg)
{
    cv_bridge::CvImagePtr cv_ptr;
    try
    {
        cv_ptr=cv_bridge::toCvCopy(msg,sensor_msgs::image_encodings::BGR8);
        QImage im=Mat2QImage(cv_ptr->image);
        emit image_val(im);
    }
    catch(cv_bridge::Exception& e)
    {
        cv_ptr=cv_bridge::toCvCopy(msg,sensor_msgs::image_encodings::TYPE_16UC1);
        QImage im=Mat2QImage(cv_ptr->image);
        emit image_val(im);
    }
}

void QNode::batteryCallback(const std_msgs::Float32 &message)
{
    emit batteryState(message.data);
}

void QNode::speedCallback(const nav_msgs::Odometry &odom)
{
    emit speedState(odom.twist.twist.linear.x,odom.twist.twist.linear.y,odom.twist.twist.linear.z,odom.twist.twist.angular.x,odom.twist.twist.angular.y,odom.twist.twist.angular.z);
}
QImage QNode::Mat2QImage(cv::Mat const& src)
{
  QImage dest(src.cols, src.rows, QImage::Format_ARGB32);
  const float scale = 255.0;
  if (src.depth() == CV_8U) {
    if (src.channels() == 1) {
      for (int i = 0; i < src.rows; ++i) {
        for (int j = 0; j < src.cols; ++j) {
          int level = src.at<quint8>(i, j);
          dest.setPixel(j, i, qRgb(level, level, level));
        }
      }
    } else if (src.channels() == 3) {
      for (int i = 0; i < src.rows; ++i) {
        for (int j = 0; j < src.cols; ++j) {
          cv::Vec3b bgr = src.at<cv::Vec3b>(i, j);
          dest.setPixel(j, i, qRgb(bgr[2], bgr[1], bgr[0]));
        }
      }
    }
  } else if(src.depth() == CV_16U){
      if (src.channels() == 1) {
        for (int i = 0; i < src.rows; ++i) {
          for (int j = 0; j < src.cols; ++j) {
            int level = (int)src.at<ushort>(i, j);
            dest.setPixel(j, i, qRgb(level, level, level));
          }
        }
      } else if (src.channels() == 3) {
        for (int i = 0; i < src.rows; ++i) {
          for (int j = 0; j < src.cols; ++j) {
            cv::Vec3b bgr = src.at<cv::Vec3b>(i, j)*65535;
            dest.setPixel(j, i, qRgb(bgr[2], bgr[1], bgr[0]));
          }
        }
      }
    }else if (src.depth() == CV_32F) {
    if (src.channels() == 1) {
      for (int i = 0; i < src.rows; ++i) {
        for (int j = 0; j < src.cols; ++j) {
          int level = scale * src.at<float>(i, j);
          dest.setPixel(j, i, qRgb(level, level, level));
        }
      }
    } else if (src.channels() == 3) {
      for (int i = 0; i < src.rows; ++i) {
        for (int j = 0; j < src.cols; ++j) {
          cv::Vec3f bgr = scale * src.at<cv::Vec3f>(i, j);
          dest.setPixel(j, i, qRgb(bgr[2], bgr[1], bgr[0]));
        }
      }
    }
  }

  return dest;
}

}  // namespace qt_ros_test



