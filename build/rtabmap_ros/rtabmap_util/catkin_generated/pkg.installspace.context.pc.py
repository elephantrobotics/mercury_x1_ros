# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "cv_bridge;image_transport;roscpp;nav_msgs;sensor_msgs;stereo_msgs;std_msgs;tf;laser_geometry;pcl_conversions;pcl_ros;nodelet;message_filters;pluginlib;rtabmap_msgs;rtabmap_conversions;octomap_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrtabmap_util_plugins".split(';') if "-lrtabmap_util_plugins" != "" else []
PROJECT_NAME = "rtabmap_util"
PROJECT_SPACE_DIR = "/home/er/mercury_x1_ros/install"
PROJECT_VERSION = "0.21.1"
