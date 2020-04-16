# -*- coding: utf-8 -*-
from __future__ import print_function
import argparse
import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/kinetic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/kinetic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in "/home/haoran/US_UR3/devel_isolated/matlab_gazebo;/home/haoran/US_UR3/devel_isolated/joint_limits_interface;/home/haoran/US_UR3/devel_isolated/jog_msgs;/home/haoran/US_UR3/devel_isolated/combined_robot_hw_tests;/home/haoran/US_UR3/devel_isolated/controller_manager_tests;/home/haoran/US_UR3/devel_isolated/controller_manager;/home/haoran/US_UR3/devel_isolated/controller_interface;/home/haoran/US_UR3/devel_isolated/combined_robot_hw;/home/haoran/US_UR3/devel_isolated/hardware_interface;/home/haoran/US_UR3/devel_isolated/controller_manager_msgs;/home/haoran/US_UR3/devel_isolated/control_msgs;/home/haoran/US_UR3/devel;/opt/ros/kinetic".split(';'):
        python_path = os.path.join(workspace, 'lib/python2.7/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/haoran/US_UR3/devel_isolated/moveit/env.sh')

output_filename = '/home/haoran/US_UR3/build_isolated/moveit/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    #print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
