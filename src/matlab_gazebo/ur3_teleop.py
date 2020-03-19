#!/usr/bin/env python

"""
    moveit_cartesian_path.py - Version 0.1 2016-07-28

    Based on the R. Patrick Goebel's moveit_cartesian_demo.py demo code.

    Plan and execute a Cartesian path for the end-effector.

    Created for the Pi Robot Project: http://www.pirobot.org
    Copyright (c) 2014 Patrick Goebel.  All rights reserved.
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.5

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details at:

    http://www.gnu.org/licenses/gpl.html
"""

import rospy, sys, numpy as np
import moveit_commander
from copy import deepcopy
from math import pi
import geometry_msgs.msg
import moveit_msgs.msg
from std_msgs.msg import Header
from geometry_msgs.msg import Point
from trajectory_msgs.msg import JointTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint
from simulation_ur3.msg import Tracker
from time import sleep


tracker = Tracker()

class ur3_teleop:
    def __init__(self):
        rospy.init_node('ur3_teleop', anonymous = True)
        rospy.loginfo("Starting node ur3_teleop")
        self.tele_sub = rospy.Subscriber('input_key', Tracker, self.call_back, queue_size=1)
        self.cur_pos_pub = rospy.Publisher('cur_pos', Point, queue_size=1)
        rospy.on_shutdown(self.cleanup)

        # Initialize the move_group API
        moveit_commander.roscpp_initialize(sys.argv)

        # Initialize the move group for the ur5_arm
        self.arm = moveit_commander.MoveGroupCommander('manipulator')

        # Get the name of the end-effector link
        self.end_effector_link = self.arm.get_end_effector_link()

        # Set the reference frame for pose targets
        reference_frame = "/base_link"

        # Set the ur3_arm reference frame accordingly
        self.arm.set_pose_reference_frame(reference_frame)

        # Allow replanning to increase the odds of a solution
        self.arm.allow_replanning(True)

        # Allow some leeway in position (meters) and orientation (radians)
        self.arm.set_goal_position_tolerance(0.01)
        self.arm.set_goal_orientation_tolerance(0.1)
        self.arm.set_planning_time(0.1)
        self.arm.set_max_acceleration_scaling_factor(.5)
        self.arm.set_max_velocity_scaling_factor(.5)

        # # Specify default (idle) joint states
        # self.default_joint_states = self.arm.get_current_joint_values()
        # self.default_joint_states[0] = 0  # shoulder_pan_joint
        # self.default_joint_states[1] = -1.0844  # shoulder_lift_joint
        # self.default_joint_states[2] = 1.8615147    # elbow_joint
        # self.default_joint_states[3] = -3.87846    # wrist_1_joint
        # self.default_joint_states[4] = -1.570656     # wrist_2_joint
        # self.default_joint_states[5] = 0           # wrist_3s_joint
        #
        # self.arm.set_joint_value_target(self.default_joint_states)
        #
        # # Set the internal state to the current state
        # #initialize the arm joint poses
        # self.arm.set_start_state_to_current_state()
        # plan = self.arm.plan()
        # self.arm.execute(plan)
        #
        # # Get the current pose so we can add it as a waypoint
        # start_pose = self.arm.get_current_pose(self.end_effector_link).pose
        # # Initialize the waypoints list
        # print(start_pose)
        # self.waypoints = []
        # # Set the first waypoint to be the starting pose
        # # Append the pose to the waypoints list
        # wpose = deepcopy(start_pose)
        #
        # wpose.position.x = 0.35118
        # wpose.position.y = 0.11240
        # wpose.position.z = 0.2997
        #
        # self.waypoints.append(deepcopy(wpose))
        #
        # if np.sqrt((wpose.position.x-start_pose.position.x)**2+(wpose.position.x-start_pose.position.x)**2 \
        #     +(wpose.position.x-start_pose.position.x)**2)<0.1:
        #     rospy.loginfo("Warnig: target position overlaps with the initial position!")
        # else:
        #     self.cartesian_execut(self.waypoints)

    def cartesian_execut(self, waypoints):
        plan, fraction = self.arm.compute_cartesian_path(waypoints, 0.01, 0.0, True)
        # If we have a complete plan, execute the trajectory
        if 1-fraction < 0.2:
            rospy.loginfo("Path computed successfully. Moving the arm.")
            num_pts = len(plan.joint_trajectory.points)
            rospy.loginfo("\n# intermediate waypoints = "+str(num_pts))
            self.arm.execute(plan)
            rospy.loginfo("Path execution complete.")
        else:
            rospy.loginfo("Path planning failed")

    def cleanup(self):
        rospy.loginfo("Stopping the robot")

        # Stop any current arm movement
        self.arm.stop()

        #Shut down MoveIt! cleanly
        rospy.loginfo("Shutting down Moveit!")
        moveit_commander.roscpp_shutdown()
        moveit_commander.os._exit(0)

    def call_back(self, msg):
        self.up = msg.up
        self.down = msg.down
        self.left = msg.left
        self.right = msg.right
        self.forward = msg.forward
        self.backward = msg.backward
        self.init_position = msg.init_position
        self.init_joint = msg.init_joint

        self.execute()

        self.up = 0
        self.down = 0
        self.left = 0
        self.right = 0
        self.forward = 0
        self.backward = 0
        self.init_position = False
        self.init_joint = False
    def execute(self):

        if self.init_joint:
            self.default_joint_states = self.arm.get_current_joint_values()
            # self.default_joint_states[0] = -1.57691
            # self.default_joint_states[1] = -1.71667
            # self.default_joint_states[2] = 1.79266
            # self.default_joint_states[3] = -1.67721
            # self.default_joint_states[4] = -1.5705
            # self.default_joint_states[5] = 0.0
            self.default_joint_states[0] = 0  # shoulder_pan_joint
            self.default_joint_states[1] = -1.0844  # shoulder_lift_joint
            self.default_joint_states[2] = 1.8615147    # elbow_joint
            self.default_joint_states[3] = -3.87846    # wrist_1_joint
            self.default_joint_states[4] = -1.570656     # wrist_2_joint
            self.default_joint_states[5] = 0           # wrist_3s_joint

            self.arm.set_joint_value_target(self.default_joint_states)

            # Set the internal state to the current state
            #move to target joint_states
            self.arm.set_start_state_to_current_state()
            plan = self.arm.plan()
            self.arm.execute(plan)
        elif self.init_position:
            start_pose = self.arm.get_current_pose(self.end_effector_link).pose

            # print(start_pose)
            # Initialize the waypoints list
            self.waypoints = []
            # Set the first waypoint to be the starting pose
            # Append the pose to the waypoints list
            wpose = deepcopy(start_pose)

            wpose.position.x = 0.35118
            wpose.position.y = 0.11260
            wpose.position.z = 0.2993

            # print(wpose)
            self.waypoints.append(deepcopy(wpose))
            self.arm.set_start_state_to_current_state()
            position_offset = np.sqrt((wpose.position.x-start_pose.position.x)**2+(wpose.position.y-start_pose.position.y)**2 \
                +(wpose.position.z-start_pose.position.z)**2)
            rospy.loginfo(position_offset)
            if position_offset<0.001:
                rospy.loginfo("Warnig: target position overlaps with the initial position!")
            else:
                self.cartesian_execut(self.waypoints)
        else:
            # Initialize the waypoints list
            self.waypoints= []
            # Get the current pose so we can add it as a waypoint
            start_pose = self.arm.get_current_pose(self.end_effector_link).pose
            wpose = deepcopy(start_pose)
            # Set the first waypoint to be the starting pose
            # Append the pose to the waypoints list
            wpose.position.x += (self.forward+self.backward)
            wpose.position.y += (self.left+self.right)
            wpose.position.z += (self.up+self.down)

            self.waypoints.append(deepcopy(wpose))

            self.arm.set_start_state_to_current_state()

            position_offset = np.sqrt((wpose.position.x-start_pose.position.x)**2+(wpose.position.y-start_pose.position.y)**2 \
                +(wpose.position.z-start_pose.position.z)**2)
            rospy.loginfo(position_offset)

            if position_offset<0.001:
                rospy.loginfo("Warnig: target position overlaps with the initial position!")
            else:
                self.cartesian_execut(self.waypoints)
        cur_pose = self.arm.get_current_pose(self.end_effector_link).pose
        point = Point()
        point.x = cur_pose.position.x
        point.y = cur_pose.position.y
        point.z = cur_pose.position.z
        self.cur_pos_pub.publish(point)

if __name__ == "__main__":
    try:
        ur3_teleop()
        rospy.spin()
    except KeyboardInterrupt:
        print "Shutting down MoveItCartesianPath node."
