cmake_minimum_required(VERSION 2.8.3)
project(jog_ur3)

add_compile_options(-std=c++11)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(catkin REQUIRED COMPONENTS
  jog_msgs
  moveit_ros_planning_interface
  rosparam_shortcuts
  tf
)

find_package(Eigen3 REQUIRED)

generate_messages(DEPENDENCIES std_msgs)

catkin_package(
  INCLUDE_DIRS
    include
  CATKIN_DEPENDS
    rospy
    roscpp
    moveit_ros_manipulation
    moveit_ros_move_group
    moveit_ros_planning_interface
    tf
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${Eigen_INCLUDE_DIRS}
)

add_executable(jog_arm_server src/jog_arm_server.cpp)
add_dependencies(jog_arm_server ${catkin_EXPORTED_TARGETS})
target_link_libraries(jog_arm_server ${catkin_LIBRARIES} ${Eigen_LIBRARIES})

add_executable(xbox_to_twist src/xbox_to_twist.cpp)
add_dependencies(xbox_to_twist ${catkin_EXPORTED_TARGETS})
target_link_libraries(xbox_to_twist ${catkin_LIBRARIES} ${Eigen_LIBRARIES})

add_executable(xbox_to_twist_test src/xbox_to_twist_test.cpp)
add_dependencies(xbox_to_twist_test ${catkin_EXPORTED_TARGETS})
target_link_libraries(xbox_to_twist_test ${catkin_LIBRARIES} ${Eigen_LIBRARIES})

install(TARGETS jog_arm_server xbox_to_twist xbox_to_twist_test
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  FILES_MATCHING PATTERN "*.h"
)
