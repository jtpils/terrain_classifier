cmake_minimum_required(VERSION 2.8.3)
project(preprocessor)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(PCL 1.7 REQUIRED COMPONENTS)
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs

  sensor_msgs
  tf
  pcl_ros
  image_transport
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES cloud_preprocessor
#  CATKIN_DEPENDS roscpp rospy std_msgs
#  DEPENDS system_lib
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${PCL_INCLUDE_DIRS}
)

link_directories(
  ${PCL_LIBRARY_DIRS}
)

#add_definitions(${PCL_DEFINITIONS})

add_executable(cloud_preprocessor src/cloud_preprocessor.cpp)

target_link_libraries(cloud_preprocessor
  ${catkin_LIBRARIES}
  ${PCL_LIBRARIES}
)
