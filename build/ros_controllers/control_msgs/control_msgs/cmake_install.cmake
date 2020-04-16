# Install script for directory: /home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/haoran/US_UR3/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/action" TYPE FILE FILES
    "/home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs/action/FollowJointTrajectory.action"
    "/home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs/action/GripperCommand.action"
    "/home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs/action/JointTrajectory.action"
    "/home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs/action/PointHead.action"
    "/home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs/action/SingleJointPosition.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/msg" TYPE FILE FILES
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/FollowJointTrajectoryAction.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/FollowJointTrajectoryActionGoal.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/FollowJointTrajectoryActionResult.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/FollowJointTrajectoryActionFeedback.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/FollowJointTrajectoryGoal.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/FollowJointTrajectoryResult.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/FollowJointTrajectoryFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/msg" TYPE FILE FILES
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/GripperCommandAction.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/GripperCommandActionGoal.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/GripperCommandActionResult.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/GripperCommandActionFeedback.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/GripperCommandGoal.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/GripperCommandResult.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/GripperCommandFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/msg" TYPE FILE FILES
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/JointTrajectoryAction.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/JointTrajectoryActionGoal.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/JointTrajectoryActionResult.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/JointTrajectoryActionFeedback.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/JointTrajectoryGoal.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/JointTrajectoryResult.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/JointTrajectoryFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/msg" TYPE FILE FILES
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/PointHeadAction.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/PointHeadActionGoal.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/PointHeadActionResult.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/PointHeadActionFeedback.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/PointHeadGoal.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/PointHeadResult.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/PointHeadFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/msg" TYPE FILE FILES
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/SingleJointPositionAction.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/SingleJointPositionActionGoal.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/SingleJointPositionActionResult.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/SingleJointPositionActionFeedback.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/SingleJointPositionGoal.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/SingleJointPositionResult.msg"
    "/home/haoran/US_UR3/devel/share/control_msgs/msg/SingleJointPositionFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/msg" TYPE FILE FILES
    "/home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs/msg/GripperCommand.msg"
    "/home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs/msg/JointControllerState.msg"
    "/home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs/msg/JointJog.msg"
    "/home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs/msg/JointTolerance.msg"
    "/home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs/msg/JointTrajectoryControllerState.msg"
    "/home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs/msg/PidState.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/srv" TYPE FILE FILES
    "/home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs/srv/QueryCalibrationState.srv"
    "/home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs/srv/QueryTrajectoryState.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/cmake" TYPE FILE FILES "/home/haoran/US_UR3/build/ros_controllers/control_msgs/control_msgs/catkin_generated/installspace/control_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/haoran/US_UR3/devel/include/control_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/haoran/US_UR3/devel/share/roseus/ros/control_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/haoran/US_UR3/devel/share/common-lisp/ros/control_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/haoran/US_UR3/devel/share/gennodejs/ros/control_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/haoran/US_UR3/devel/lib/python2.7/dist-packages/control_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/haoran/US_UR3/devel/lib/python2.7/dist-packages/control_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/haoran/US_UR3/build/ros_controllers/control_msgs/control_msgs/catkin_generated/installspace/control_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/cmake" TYPE FILE FILES "/home/haoran/US_UR3/build/ros_controllers/control_msgs/control_msgs/catkin_generated/installspace/control_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/cmake" TYPE FILE FILES
    "/home/haoran/US_UR3/build/ros_controllers/control_msgs/control_msgs/catkin_generated/installspace/control_msgsConfig.cmake"
    "/home/haoran/US_UR3/build/ros_controllers/control_msgs/control_msgs/catkin_generated/installspace/control_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs" TYPE FILE FILES "/home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs/package.xml")
endif()

