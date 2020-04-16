# Install script for directory: /home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/haoran/US_UR3/install_isolated")
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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/haoran/US_UR3/install_isolated/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/haoran/US_UR3/install_isolated" TYPE PROGRAM FILES "/home/haoran/US_UR3/build_isolated/control_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/haoran/US_UR3/install_isolated/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/haoran/US_UR3/install_isolated" TYPE PROGRAM FILES "/home/haoran/US_UR3/build_isolated/control_msgs/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/haoran/US_UR3/install_isolated/setup.bash;/home/haoran/US_UR3/install_isolated/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/haoran/US_UR3/install_isolated" TYPE FILE FILES
    "/home/haoran/US_UR3/build_isolated/control_msgs/catkin_generated/installspace/setup.bash"
    "/home/haoran/US_UR3/build_isolated/control_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/haoran/US_UR3/install_isolated/setup.sh;/home/haoran/US_UR3/install_isolated/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/haoran/US_UR3/install_isolated" TYPE FILE FILES
    "/home/haoran/US_UR3/build_isolated/control_msgs/catkin_generated/installspace/setup.sh"
    "/home/haoran/US_UR3/build_isolated/control_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/haoran/US_UR3/install_isolated/setup.zsh;/home/haoran/US_UR3/install_isolated/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/haoran/US_UR3/install_isolated" TYPE FILE FILES
    "/home/haoran/US_UR3/build_isolated/control_msgs/catkin_generated/installspace/setup.zsh"
    "/home/haoran/US_UR3/build_isolated/control_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/haoran/US_UR3/install_isolated/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/haoran/US_UR3/install_isolated" TYPE FILE FILES "/home/haoran/US_UR3/build_isolated/control_msgs/catkin_generated/installspace/.rosinstall")
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
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/FollowJointTrajectoryAction.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/FollowJointTrajectoryActionGoal.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/FollowJointTrajectoryActionResult.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/FollowJointTrajectoryActionFeedback.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/FollowJointTrajectoryGoal.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/FollowJointTrajectoryResult.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/FollowJointTrajectoryFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/msg" TYPE FILE FILES
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/GripperCommandAction.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/GripperCommandActionGoal.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/GripperCommandActionResult.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/GripperCommandActionFeedback.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/GripperCommandGoal.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/GripperCommandResult.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/GripperCommandFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/msg" TYPE FILE FILES
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/JointTrajectoryAction.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/JointTrajectoryActionGoal.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/JointTrajectoryActionResult.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/JointTrajectoryActionFeedback.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/JointTrajectoryGoal.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/JointTrajectoryResult.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/JointTrajectoryFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/msg" TYPE FILE FILES
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/PointHeadAction.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/PointHeadActionGoal.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/PointHeadActionResult.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/PointHeadActionFeedback.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/PointHeadGoal.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/PointHeadResult.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/PointHeadFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/msg" TYPE FILE FILES
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/SingleJointPositionAction.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/SingleJointPositionActionGoal.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/SingleJointPositionActionResult.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/SingleJointPositionActionFeedback.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/SingleJointPositionGoal.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/SingleJointPositionResult.msg"
    "/home/haoran/US_UR3/devel_isolated/control_msgs/share/control_msgs/msg/SingleJointPositionFeedback.msg"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/cmake" TYPE FILE FILES "/home/haoran/US_UR3/build_isolated/control_msgs/catkin_generated/installspace/control_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/haoran/US_UR3/devel_isolated/control_msgs/include/control_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/haoran/US_UR3/devel_isolated/control_msgs/share/roseus/ros/control_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/haoran/US_UR3/devel_isolated/control_msgs/share/common-lisp/ros/control_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/haoran/US_UR3/devel_isolated/control_msgs/share/gennodejs/ros/control_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/haoran/US_UR3/devel_isolated/control_msgs/lib/python2.7/dist-packages/control_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/haoran/US_UR3/devel_isolated/control_msgs/lib/python2.7/dist-packages/control_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/haoran/US_UR3/build_isolated/control_msgs/catkin_generated/installspace/control_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/cmake" TYPE FILE FILES "/home/haoran/US_UR3/build_isolated/control_msgs/catkin_generated/installspace/control_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/cmake" TYPE FILE FILES
    "/home/haoran/US_UR3/build_isolated/control_msgs/catkin_generated/installspace/control_msgsConfig.cmake"
    "/home/haoran/US_UR3/build_isolated/control_msgs/catkin_generated/installspace/control_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs" TYPE FILE FILES "/home/haoran/US_UR3/src/ros_controllers/control_msgs/control_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/haoran/US_UR3/build_isolated/control_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/haoran/US_UR3/build_isolated/control_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
