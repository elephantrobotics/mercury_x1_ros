# Install script for directory: /home/er/mercury_x1_ros/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/er/mercury_x1_ros/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/er/mercury_x1_ros/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/er/mercury_x1_ros/install" TYPE PROGRAM FILES "/home/er/mercury_x1_ros/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/er/mercury_x1_ros/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/er/mercury_x1_ros/install" TYPE PROGRAM FILES "/home/er/mercury_x1_ros/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/er/mercury_x1_ros/install/setup.bash;/home/er/mercury_x1_ros/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/er/mercury_x1_ros/install" TYPE FILE FILES
    "/home/er/mercury_x1_ros/build/catkin_generated/installspace/setup.bash"
    "/home/er/mercury_x1_ros/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/er/mercury_x1_ros/install/setup.sh;/home/er/mercury_x1_ros/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/er/mercury_x1_ros/install" TYPE FILE FILES
    "/home/er/mercury_x1_ros/build/catkin_generated/installspace/setup.sh"
    "/home/er/mercury_x1_ros/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/er/mercury_x1_ros/install/setup.zsh;/home/er/mercury_x1_ros/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/er/mercury_x1_ros/install" TYPE FILE FILES
    "/home/er/mercury_x1_ros/build/catkin_generated/installspace/setup.zsh"
    "/home/er/mercury_x1_ros/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/er/mercury_x1_ros/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/er/mercury_x1_ros/install" TYPE FILE FILES "/home/er/mercury_x1_ros/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/er/mercury_x1_ros/build/gtest/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/camera_umd/camera_umd/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/navigation/navigation/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rtabmap_ros/rtabmap_launch/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rtabmap_ros/rtabmap_ros/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/world_canvas_msgs/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/mercury_x1_teleop/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/navigation/map_server/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rtabmap_ros/rtabmap_python/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/lsm10_v2/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/lsn10/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/darknet_ros/darknet_ros_msgs/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/darknet_ros/darknet_ros/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/depthimage_to_laserscan/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/camera_umd/jpeg_streamer/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/kcf_track/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/ros_object_detection/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rplidar_ros/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rtabmap_ros/rtabmap_msgs/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/simple_follower/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/OrbbecSDK_ROS1/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/mercury_x1_ps2/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/ldlidar_14/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/robot_pose_ekf/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rrt_exploration/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/navigation/amcl/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/navigation/fake_localization/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rtabmap_ros/rtabmap_conversions/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rtabmap_ros/rtabmap_demos/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rtabmap_ros/rtabmap_examples/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rtabmap_ros/rtabmap_sync/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rtabmap_ros/rtabmap_util/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rtabmap_ros/rtabmap_legacy/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rtabmap_ros/rtabmap_odom/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rtabmap_ros/rtabmap_slam/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rtabmap_ros/rtabmap_viz/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/tringai_joy_control/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/mercury_multi/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/turn_on_mercury_robot/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rviz_navi_multi_goals_pub_plugin/navi_multi_goals_pub_rviz_plugin/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/qt_ros_test/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rtabmap_ros/rtabmap_rviz_plugins/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/usb_cam/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/camera_umd/uvc_camera/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/navigation/voxel_grid/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/navigation/costmap_2d/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/navigation/nav_core/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/navigation/base_local_planner/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/navigation/carrot_planner/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/navigation/clear_costmap_recovery/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/navigation/dwa_local_planner/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/navigation/move_slow_and_clear/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/navigation/navfn/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/navigation/global_planner/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/navigation/rotate_recovery/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/navigation/move_base/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/rtabmap_ros/rtabmap_costmap_plugins/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/teb_local_planner/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/web_video_server/cmake_install.cmake")
  include("/home/er/mercury_x1_ros/build/xf_mic_asr_offline/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/er/mercury_x1_ros/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
