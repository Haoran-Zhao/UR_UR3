#include ros/ros.h
#include "sensor_msgs/Joy.h"
#include "moveit/robot_model_loader/robot_model_loader.h"
#include "moveit/planning_interface/planning_interface.h"
#include "moveit/planning_scene/planning_scene.h"
#include "moveit_msgs/PlanningScene.h"

namespace to_initialize
{
  class xboxToInitialize
  {
  public:
    xboxToInitialize() : spinner_(1)
    {
      joy_sub_ = n_.subscribe("joy", 1, &xboxToInitialize::joyCallback, this);
      spinner_.start()
      ros::waitForShutdown();
    };

  private:
    ros::NodeHandle n_;
    ros::Subscriber joy_sub_;
    ros::AsyncSpinner spinner_;

    const std::string PLANNING_GROUP = "manipulator";
    robot_model_loader::RobotModelLoader

  };
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "xbox_To_Initialize");

  to_initialize::xboxToInitialize to_initialize;
}
