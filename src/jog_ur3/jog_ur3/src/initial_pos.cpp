#include "ros/ros.h"
#include "sensor_msgs/Joy.h"
#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>

#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>

#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>

#include <moveit_visual_tools/moveit_visual_tools.h>

namespace to_initialize
{
class xboxToInitialize
{
public:
  xboxToInitialize() : spinner_(1)
  {
    joy_sub_ = n_.subscribe("joy", 1, &xboxToInitialize::joyCallback, this);
    spinner_.start();
    ros::waitForShutdown();
  }

private:
  ros::NodeHandle n_;
  ros::Subscriber joy_sub_;
  ros::AsyncSpinner spinner_;

  void joyCallback(const sensor_msgs::Joy::ConstPtr& msg)
  {
    const std::string PLANNING_GROUP = "manipulator";
    moveit::planning_interface::MoveGroupInterface move_group(PLANNING_GROUP);

    //get basic INFO
    ROS_INFO_NAMED("Initialize", "Planning frame: %s", move_group.getPlanningFrame().c_str());
    ROS_INFO_NAMED("Initialize", "End effector link: %s", move_group.getEndEffectorLink().c_str());
    ROS_INFO_NAMED("Initialize", "Available Planning Groups:");
    std::copy(move_group.getJointModelGroupNames().begin(), move_group.getJointModelGroupNames().end(),
          std::ostream_iterator<std::string>(std::cout, ", "));
    const robot_state::JointModelGroup* joint_model_group = move_group.getCurrentState()->getJointModelGroup(PLANNING_GROUP);
    if (msg->buttons[2]==1){
      std::vector<geometry_msgs::Pose> waypoints;
      geometry_msgs::Pose target_pose;
      target_pose.position.X = 0.335;
      target_pose.position.y = 0.112;
      target_pose.position.z = 0.125;

      waypoints.push_back(target_pose);
      move_group.set_max_velocity_scaling_factor(0.1);
      moveit_msgs::RobotTrajectory trajectory;
      onst double jump_threshold = 0.0;
      const double eef_step = 0.01;
      double fraction = move_group.computeCartesianPath(waypoints, eef_step, jump_threshold, trajectory);
      ROS_INFO_NAMED("Initialize", "Initialize to goal pose (%.2f%% acheived)", fraction * 100.0);
    }

    else if (msg->buttons[3]==1){
      moveit::core::RobotStatePtr current_state = move_group.getCurrentState();
      std::vector<double> joint_group_positions;
      current_state->copyJointGroupPositions(joint_model_group, joint_group_positions);

      joint_group_positions[0] = 0;           //shoulder_pan_joint
      joint_group_positions[1] = -1.0996;     // shoulder_lift_joint
      joint_group_positions[2] = 1.9199;      // elbow_joint
      joint_group_positions[3] = -0.7858;     // wrist_1_joint
      joint_group_positions[4] = 1.57079;     // wrist_2_joint
      joint_group_positions[5] = 1.7639;      // wrist_3_joint

      move_group.set_joint_value_target(joint_group_positions);

      success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
      ROS_INFO_NAMED("Initialize","Initialized to the joint goal %s", success ? "": "FAILED");
    }
  }

};
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "xbox_To_Initialize");

  to_initialize::xboxToInitialize to_initialize;

  return 0;
}
