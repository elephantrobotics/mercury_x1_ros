#!/bin/sh

sudo apt-get install ros-noetic-uuid-msgs -y
sudo apt-get install ros-noetic-serial -y
sudo apt-get install ros-noetic-tf2-sensor-msgs -y 
sudo apt-get install ros-noetic-joy -y
sudo apt-get install ros-noetic-map-server -y
sudo apt-get install libgflags-dev ros-$ROS_DISTRO-image-geometry ros-$ROS_DISTRO-camera-info-manager ros-$ROS_DISTRO-image-transport ros-$ROS_DISTRO-image-publisher libgoogle-glog-dev libusb-1.0-0-dev libeigen3-dev -y
sudo apt-get install liborocos-bfl-dev -y
sudo apt-get install ros-noetic-rtabmap* -y
sudo apt-get install ros-noetic-costmap-converter -y
sudo apt-get install ros-noetic-mbf-costmap-core -y
sudo apt-get install ros-noetic-mbf-msgs -y
sudo apt-get install ros-noetic-async-web-server-cpp -y
sudo apt-get install libudev-dev -y
sudo apt-get install libusb-1.0-0-dev -y
sudo apt-get install libv4l-dev -y
sudo apt-get install libuvc-dev -y
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential -y
sudo apt-get install ros-noetic-moveit -y
sudo apt install ros-noetic-joint-state-publisher-gui -y

