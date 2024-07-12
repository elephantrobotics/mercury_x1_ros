/**
 * @file /include/qt_ros_test/qnode.hpp
 *
 * @brief Communications central!
 *
 * @date February 2011
 **/
/*****************************************************************************
** Ifdefs
*****************************************************************************/

#ifndef qt_ros_test_QNODE_HPP_
#define qt_ros_test_QNODE_HPP_

/*****************************************************************************
** Includes
*****************************************************************************/

// To workaround boost/qt4 problems that won't be bugfixed. Refer to
//    https://bugreports.qt.io/browse/QTBUG-22829
#ifndef Q_MOC_RUN
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#endif
#include <string>
#include <QThread>
#include <QStringListModel>
#include <sensor_msgs/Image.h>
#include <std_msgs/Float32.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <QImage>


/*****************************************************************************
** Namespaces
*****************************************************************************/

namespace qt_ros_test {

/*****************************************************************************
** Class
*****************************************************************************/

class QNode : public QThread {
    Q_OBJECT
public:
	QNode(int argc, char** argv );
	virtual ~QNode();
	bool init();
	bool init(const std::string &master_url, const std::string &host_url);
	void run();

    void init_pubsub();
    void init_param();
    void pub_cmd(bool car_model,int keybutton,double speed,double turn);
    void sub_camera(QString cameratopic);
    void image_callback(const sensor_msgs::ImageConstPtr &msg);
    void batteryCallback(const std_msgs::Float32 &message);
    void speedCallback(const nav_msgs::Odometry &odom);
    QImage Mat2QImage(cv::Mat const& src);

Q_SIGNALS:
	void loggingUpdated();
    void rosShutdown();
    void image_val(QImage);
    void batteryState(double);
    void speedState(double,double,double,double,double,double);

private:
	int init_argc;
	char** init_argv;
    ros::Publisher cmd_pub;
    ros::Subscriber image_sub;
    ros::Subscriber battery_sub;
    ros::Subscriber Cmd_Vel_Sub;
    float control_speed = 0; //#前进后退实际控制速度
    float control_turn  = 0; //#转向实际控制速度
    float control_HorizonMove = 0; //#横向移动实际控制速度
};

}  // namespace qt_ros_test

#endif /* qt_ros_test_QNODE_HPP_ */
