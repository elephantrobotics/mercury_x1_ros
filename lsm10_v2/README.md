# lsm10_ros

## version track
Author: yao


## Description
The `lsm10_ros` package is a linux ROS driver for lsm10.
The package is tested on Ubuntu 16.04 with ROS kinetic.

## Compling
This is a Catkin package. Make sure the package is on `ROS_PACKAGE_PATH` after cloning the package to your workspace. And the normal procedure for compling a catkin package will work.

```
cd your_work_space
catkin_make 
source devel/setup.bash
```

**Published Topics**

``/scan`` (`sensor_msgs/scan`)
``/difop_information`` 

**Node**

```
roslaunch lsm10_v2 lsm10_v2.launch
```

## FAQ

## Bug Report







