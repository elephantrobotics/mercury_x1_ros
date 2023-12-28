cmake_minimum_required(VERSION 2.8.3)
project(lsm10_v2)

add_compile_options(-std=c++14)
set( CMAKE_CXX_STANDARD 14)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs 
  sensor_msgs
  message_generation
  dynamic_reconfigure
)
find_package(Boost REQUIRED)

add_message_files(FILES
  difop.msg
)
generate_messages(DEPENDENCIES std_msgs)

catkin_package(CATKIN_DEPENDS roscpp 
rospy std_msgs message_runtime dynamic_reconfigure)

include_directories(${dynamic_reconfigure_PACKAGE_PATH}/cmake/cfgbuild.cmake)
include_directories(include)
include_directories(${catkin_INCLUDE_DIRS})


add_executable(lsm10_v2
                src/lsiosr.cpp
                src/lsm10.cpp)
add_dependencies(lsm10_v2 ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(lsm10_v2 ${Boost_LIBRARIES} ${catkin_LIBRARIES})

install(TARGETS lsm10_v2
    ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
    LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
    RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
