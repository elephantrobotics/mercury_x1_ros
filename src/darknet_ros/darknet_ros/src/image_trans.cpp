
#include "ros/ros.h"
#include "sensor_msgs/Image.h"
#include "image_transport/image_transport.h"

image_transport::Publisher image_pub;

void ImageCallback(const sensor_msgs::ImageConstPtr &msg)
{
	//printf("11111\n");
	image_pub.publish(msg);
}

int main(int argc, char **argv)
{
  std::string input_topic;
  std::string output_topic;

  ros::init(argc, argv, "CompressedImage");
  ros::NodeHandle nh;
  nh.param<std::string>("display_image_trans/input_image_topic", input_topic, "/body/image");
  nh.param<std::string>("display_image_trans/output_image_topic", output_topic, "/repub/body/image");

  image_transport::ImageTransport it(nh);
  image_transport::Subscriber image_sub;
  //image_transport::Publisher image_pub;
  image_sub = it.subscribe(input_topic, 1, ImageCallback);
  image_pub = it.advertise(output_topic, 1);
  ros::spin();
  return 0;
}

