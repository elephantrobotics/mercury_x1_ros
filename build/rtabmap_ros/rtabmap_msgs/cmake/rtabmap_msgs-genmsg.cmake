# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rtabmap_msgs: 23 messages, 16 services")

set(MSG_I_FLAGS "-Irtabmap_msgs:/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rtabmap_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Info.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Info.msg" "rtabmap_msgs/MapGraph:geometry_msgs/Pose:geometry_msgs/Vector3:geometry_msgs/Point:rtabmap_msgs/Link:geometry_msgs/Transform:std_msgs/Header:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg" "rtabmap_msgs/Point2f"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/ScanDescriptor.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/ScanDescriptor.msg" "sensor_msgs/PointCloud2:sensor_msgs/LaserScan:sensor_msgs/PointField:std_msgs/Header:rtabmap_msgs/GlobalDescriptor"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg" "rtabmap_msgs/MapGraph:rtabmap_msgs/EnvSensor:rtabmap_msgs/Link:geometry_msgs/PoseWithCovariance:sensor_msgs/PointCloud2:rtabmap_msgs/GPS:geometry_msgs/Point:sensor_msgs/PointField:rtabmap_msgs/Point3f:sensor_msgs/CameraInfo:geometry_msgs/Pose:geometry_msgs/Vector3:geometry_msgs/Transform:std_msgs/Header:rtabmap_msgs/KeyPoint:sensor_msgs/Image:geometry_msgs/Quaternion:sensor_msgs/RegionOfInterest:rtabmap_msgs/LandmarkDetection:rtabmap_msgs/Point2f:sensor_msgs/Imu:rtabmap_msgs/Node:rtabmap_msgs/GlobalDescriptor:rtabmap_msgs/SensorData"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg" "geometry_msgs/Pose:geometry_msgs/Vector3:geometry_msgs/Point:rtabmap_msgs/Link:geometry_msgs/Transform:std_msgs/Header:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg" "rtabmap_msgs/EnvSensor:geometry_msgs/PoseWithCovariance:sensor_msgs/PointCloud2:rtabmap_msgs/GPS:geometry_msgs/Point:sensor_msgs/PointField:rtabmap_msgs/Point3f:sensor_msgs/CameraInfo:geometry_msgs/Pose:geometry_msgs/Vector3:geometry_msgs/Transform:std_msgs/Header:rtabmap_msgs/KeyPoint:sensor_msgs/Image:geometry_msgs/Quaternion:sensor_msgs/RegionOfInterest:rtabmap_msgs/LandmarkDetection:rtabmap_msgs/Point2f:sensor_msgs/Imu:rtabmap_msgs/GlobalDescriptor:rtabmap_msgs/SensorData"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg" "rtabmap_msgs/EnvSensor:geometry_msgs/PoseWithCovariance:sensor_msgs/PointCloud2:rtabmap_msgs/GPS:sensor_msgs/PointField:geometry_msgs/Point:rtabmap_msgs/Point3f:sensor_msgs/CameraInfo:geometry_msgs/Pose:geometry_msgs/Vector3:geometry_msgs/Transform:std_msgs/Header:rtabmap_msgs/KeyPoint:geometry_msgs/Quaternion:sensor_msgs/Image:sensor_msgs/RegionOfInterest:rtabmap_msgs/LandmarkDetection:rtabmap_msgs/Point2f:sensor_msgs/Imu:rtabmap_msgs/GlobalDescriptor"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg" "geometry_msgs/Quaternion:geometry_msgs/Transform:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/OdomInfo.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/OdomInfo.msg" "sensor_msgs/CameraInfo:sensor_msgs/RegionOfInterest:geometry_msgs/Pose:sensor_msgs/PointCloud2:rtabmap_msgs/Point2f:geometry_msgs/Vector3:geometry_msgs/Point:rtabmap_msgs/CameraModel:sensor_msgs/PointField:rtabmap_msgs/Point3f:geometry_msgs/Transform:std_msgs/Header:rtabmap_msgs/KeyPoint:geometry_msgs/Quaternion:rtabmap_msgs/CameraModels"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/PoseWithCovariance:std_msgs/Header:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetections.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetections.msg" "geometry_msgs/Pose:rtabmap_msgs/LandmarkDetection:geometry_msgs/Point:geometry_msgs/PoseWithCovariance:std_msgs/Header:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg" ""
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg" ""
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Goal.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Goal.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg" "sensor_msgs/CameraInfo:sensor_msgs/RegionOfInterest:rtabmap_msgs/Point2f:rtabmap_msgs/Point3f:std_msgs/Header:rtabmap_msgs/KeyPoint:rtabmap_msgs/GlobalDescriptor:sensor_msgs/Image:sensor_msgs/CompressedImage"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImages.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImages.msg" "sensor_msgs/CameraInfo:sensor_msgs/RegionOfInterest:rtabmap_msgs/RGBDImage:rtabmap_msgs/Point2f:rtabmap_msgs/Point3f:std_msgs/Header:rtabmap_msgs/KeyPoint:rtabmap_msgs/GlobalDescriptor:sensor_msgs/Image:sensor_msgs/CompressedImage"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/UserData.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/UserData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg" ""
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg" "std_msgs/Header:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg" "sensor_msgs/CameraInfo:sensor_msgs/RegionOfInterest:geometry_msgs/Vector3:geometry_msgs/Transform:std_msgs/Header:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg" "sensor_msgs/CameraInfo:sensor_msgs/RegionOfInterest:geometry_msgs/Vector3:rtabmap_msgs/CameraModel:geometry_msgs/Transform:std_msgs/Header:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap.srv" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap.srv" "rtabmap_msgs/MapGraph:rtabmap_msgs/EnvSensor:rtabmap_msgs/Link:geometry_msgs/PoseWithCovariance:sensor_msgs/PointCloud2:rtabmap_msgs/GPS:geometry_msgs/Point:sensor_msgs/PointField:rtabmap_msgs/Point3f:sensor_msgs/CameraInfo:geometry_msgs/Pose:geometry_msgs/Vector3:geometry_msgs/Transform:std_msgs/Header:rtabmap_msgs/KeyPoint:sensor_msgs/Image:geometry_msgs/Quaternion:rtabmap_msgs/MapData:sensor_msgs/RegionOfInterest:rtabmap_msgs/LandmarkDetection:rtabmap_msgs/Point2f:sensor_msgs/Imu:rtabmap_msgs/Node:rtabmap_msgs/GlobalDescriptor:rtabmap_msgs/SensorData"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap2.srv" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap2.srv" "rtabmap_msgs/MapGraph:rtabmap_msgs/EnvSensor:rtabmap_msgs/Link:geometry_msgs/PoseWithCovariance:sensor_msgs/PointCloud2:rtabmap_msgs/GPS:geometry_msgs/Point:sensor_msgs/PointField:rtabmap_msgs/Point3f:sensor_msgs/CameraInfo:geometry_msgs/Pose:geometry_msgs/Vector3:geometry_msgs/Transform:std_msgs/Header:rtabmap_msgs/KeyPoint:sensor_msgs/Image:geometry_msgs/Quaternion:rtabmap_msgs/MapData:sensor_msgs/RegionOfInterest:rtabmap_msgs/LandmarkDetection:rtabmap_msgs/Point2f:sensor_msgs/Imu:rtabmap_msgs/Node:rtabmap_msgs/GlobalDescriptor:rtabmap_msgs/SensorData"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ListLabels.srv" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ListLabels.srv" ""
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/PublishMap.srv" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/PublishMap.srv" ""
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ResetPose.srv" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ResetPose.srv" ""
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetGoal.srv" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetGoal.srv" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetLabel.srv" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetLabel.srv" ""
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/RemoveLabel.srv" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/RemoveLabel.srv" ""
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetPlan.srv" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetPlan.srv" "rtabmap_msgs/Path:geometry_msgs/Pose:geometry_msgs/PoseStamped:geometry_msgs/Point:std_msgs/Header:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/AddLink.srv" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/AddLink.srv" "geometry_msgs/Quaternion:geometry_msgs/Transform:geometry_msgs/Vector3:rtabmap_msgs/Link"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodeData.srv" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodeData.srv" "rtabmap_msgs/EnvSensor:geometry_msgs/PoseWithCovariance:sensor_msgs/PointCloud2:rtabmap_msgs/GPS:geometry_msgs/Point:sensor_msgs/PointField:rtabmap_msgs/Point3f:sensor_msgs/CameraInfo:geometry_msgs/Pose:geometry_msgs/Vector3:geometry_msgs/Transform:std_msgs/Header:rtabmap_msgs/KeyPoint:sensor_msgs/Image:geometry_msgs/Quaternion:sensor_msgs/RegionOfInterest:rtabmap_msgs/LandmarkDetection:rtabmap_msgs/Point2f:sensor_msgs/Imu:rtabmap_msgs/Node:rtabmap_msgs/GlobalDescriptor:rtabmap_msgs/SensorData"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodesInRadius.srv" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodesInRadius.srv" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/LoadDatabase.srv" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/LoadDatabase.srv" ""
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/DetectMoreLoopClosures.srv" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/DetectMoreLoopClosures.srv" ""
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GlobalBundleAdjustment.srv" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GlobalBundleAdjustment.srv" ""
)

get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/CleanupLocalGrids.srv" NAME_WE)
add_custom_target(_rtabmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rtabmap_msgs" "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/CleanupLocalGrids.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Info.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/ScanDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/OdomInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImages.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/UserData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)

### Generating Services
_generate_srv_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap2.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ListLabels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/PublishMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ResetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetLabel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/RemoveLabel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetPlan.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/AddLink.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodeData.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodesInRadius.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/LoadDatabase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/DetectMoreLoopClosures.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GlobalBundleAdjustment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_cpp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/CleanupLocalGrids.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
)

### Generating Module File
_generate_module_cpp(rtabmap_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rtabmap_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rtabmap_msgs_generate_messages rtabmap_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Info.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/ScanDescriptor.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/OdomInfo.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetections.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Goal.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImages.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/UserData.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap2.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ListLabels.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/PublishMap.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ResetPose.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetGoal.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetLabel.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/RemoveLabel.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetPlan.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/AddLink.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodeData.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodesInRadius.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/LoadDatabase.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/DetectMoreLoopClosures.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GlobalBundleAdjustment.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/CleanupLocalGrids.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_cpp _rtabmap_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rtabmap_msgs_gencpp)
add_dependencies(rtabmap_msgs_gencpp rtabmap_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rtabmap_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Info.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/ScanDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/OdomInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImages.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/UserData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)

### Generating Services
_generate_srv_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap2.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ListLabels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/PublishMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ResetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetLabel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/RemoveLabel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetPlan.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/AddLink.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodeData.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodesInRadius.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/LoadDatabase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/DetectMoreLoopClosures.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GlobalBundleAdjustment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_eus(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/CleanupLocalGrids.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
)

### Generating Module File
_generate_module_eus(rtabmap_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rtabmap_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rtabmap_msgs_generate_messages rtabmap_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Info.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/ScanDescriptor.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/OdomInfo.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetections.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Goal.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImages.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/UserData.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap2.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ListLabels.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/PublishMap.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ResetPose.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetGoal.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetLabel.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/RemoveLabel.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetPlan.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/AddLink.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodeData.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodesInRadius.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/LoadDatabase.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/DetectMoreLoopClosures.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GlobalBundleAdjustment.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/CleanupLocalGrids.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_eus _rtabmap_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rtabmap_msgs_geneus)
add_dependencies(rtabmap_msgs_geneus rtabmap_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rtabmap_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Info.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/ScanDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/OdomInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImages.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/UserData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)

### Generating Services
_generate_srv_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap2.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ListLabels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/PublishMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ResetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetLabel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/RemoveLabel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetPlan.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/AddLink.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodeData.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodesInRadius.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/LoadDatabase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/DetectMoreLoopClosures.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GlobalBundleAdjustment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_lisp(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/CleanupLocalGrids.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
)

### Generating Module File
_generate_module_lisp(rtabmap_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rtabmap_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rtabmap_msgs_generate_messages rtabmap_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Info.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/ScanDescriptor.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/OdomInfo.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetections.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Goal.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImages.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/UserData.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap2.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ListLabels.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/PublishMap.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ResetPose.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetGoal.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetLabel.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/RemoveLabel.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetPlan.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/AddLink.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodeData.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodesInRadius.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/LoadDatabase.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/DetectMoreLoopClosures.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GlobalBundleAdjustment.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/CleanupLocalGrids.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_lisp _rtabmap_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rtabmap_msgs_genlisp)
add_dependencies(rtabmap_msgs_genlisp rtabmap_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rtabmap_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Info.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/ScanDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/OdomInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImages.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/UserData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)

### Generating Services
_generate_srv_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap2.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ListLabels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/PublishMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ResetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetLabel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/RemoveLabel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetPlan.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/AddLink.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodeData.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodesInRadius.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/LoadDatabase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/DetectMoreLoopClosures.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GlobalBundleAdjustment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_nodejs(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/CleanupLocalGrids.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
)

### Generating Module File
_generate_module_nodejs(rtabmap_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rtabmap_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rtabmap_msgs_generate_messages rtabmap_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Info.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/ScanDescriptor.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/OdomInfo.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetections.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Goal.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImages.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/UserData.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap2.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ListLabels.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/PublishMap.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ResetPose.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetGoal.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetLabel.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/RemoveLabel.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetPlan.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/AddLink.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodeData.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodesInRadius.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/LoadDatabase.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/DetectMoreLoopClosures.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GlobalBundleAdjustment.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/CleanupLocalGrids.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_nodejs _rtabmap_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rtabmap_msgs_gennodejs)
add_dependencies(rtabmap_msgs_gennodejs rtabmap_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rtabmap_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Info.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/ScanDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/OdomInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImages.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/UserData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_msg_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)

### Generating Services
_generate_srv_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap2.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ListLabels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/PublishMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ResetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetLabel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/RemoveLabel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetPlan.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/AddLink.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodeData.srv"
  "${MSG_I_FLAGS}"
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg;/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodesInRadius.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/LoadDatabase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/DetectMoreLoopClosures.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GlobalBundleAdjustment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)
_generate_srv_py(rtabmap_msgs
  "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/CleanupLocalGrids.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
)

### Generating Module File
_generate_module_py(rtabmap_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rtabmap_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rtabmap_msgs_generate_messages rtabmap_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Info.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/KeyPoint.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GlobalDescriptor.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/ScanDescriptor.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapData.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/MapGraph.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Node.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/SensorData.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Link.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/OdomInfo.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetection.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/LandmarkDetections.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point2f.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Point3f.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Goal.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImage.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/RGBDImages.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/UserData.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/GPS.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/Path.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/EnvSensor.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModel.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/msg/CameraModels.msg" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetMap2.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ListLabels.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/PublishMap.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/ResetPose.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetGoal.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/SetLabel.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/RemoveLabel.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetPlan.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/AddLink.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodeData.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GetNodesInRadius.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/LoadDatabase.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/DetectMoreLoopClosures.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/GlobalBundleAdjustment.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/er/mercury_x1_ros/src/rtabmap_ros/rtabmap_msgs/srv/CleanupLocalGrids.srv" NAME_WE)
add_dependencies(rtabmap_msgs_generate_messages_py _rtabmap_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rtabmap_msgs_genpy)
add_dependencies(rtabmap_msgs_genpy rtabmap_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rtabmap_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rtabmap_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rtabmap_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rtabmap_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(rtabmap_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rtabmap_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rtabmap_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rtabmap_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(rtabmap_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rtabmap_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rtabmap_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rtabmap_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(rtabmap_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rtabmap_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rtabmap_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rtabmap_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(rtabmap_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rtabmap_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rtabmap_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rtabmap_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(rtabmap_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
