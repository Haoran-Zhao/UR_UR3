# CMake generated Testfile for 
# Source directory: /home/haoran/US_UR3/src/ros_controllers/ros_control/joint_limits_interface
# Build directory: /home/haoran/US_UR3/build_isolated/joint_limits_interface
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_joint_limits_interface_gtest_joint_limits_interface_test "/home/haoran/US_UR3/build_isolated/joint_limits_interface/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/haoran/US_UR3/build_isolated/joint_limits_interface/test_results/joint_limits_interface/gtest-joint_limits_interface_test.xml" "--return-code" "/home/haoran/US_UR3/devel_isolated/joint_limits_interface/lib/joint_limits_interface/joint_limits_interface_test --gtest_output=xml:/home/haoran/US_UR3/build_isolated/joint_limits_interface/test_results/joint_limits_interface/gtest-joint_limits_interface_test.xml")
add_test(_ctest_joint_limits_interface_gtest_joint_limits_urdf_test "/home/haoran/US_UR3/build_isolated/joint_limits_interface/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/haoran/US_UR3/build_isolated/joint_limits_interface/test_results/joint_limits_interface/gtest-joint_limits_urdf_test.xml" "--return-code" "/home/haoran/US_UR3/devel_isolated/joint_limits_interface/lib/joint_limits_interface/joint_limits_urdf_test --gtest_output=xml:/home/haoran/US_UR3/build_isolated/joint_limits_interface/test_results/joint_limits_interface/gtest-joint_limits_urdf_test.xml")
add_test(_ctest_joint_limits_interface_rostest_test_joint_limits_rosparam.test "/home/haoran/US_UR3/build_isolated/joint_limits_interface/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/haoran/US_UR3/build_isolated/joint_limits_interface/test_results/joint_limits_interface/rostest-test_joint_limits_rosparam.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/haoran/US_UR3/src/ros_controllers/ros_control/joint_limits_interface --package=joint_limits_interface --results-filename test_joint_limits_rosparam.xml --results-base-dir \"/home/haoran/US_UR3/build_isolated/joint_limits_interface/test_results\" /home/haoran/US_UR3/src/ros_controllers/ros_control/joint_limits_interface/test/joint_limits_rosparam.test ")
subdirs(gtest)