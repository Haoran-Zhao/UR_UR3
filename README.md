# US_UR3

#### 1. Connecting Universal Robot (UR3) to PC (Ubuntu 16.04)
##### 1.1 Configure your hardware
Follow the steps on the official website [`"Getting Started with a Universal Robot and ROS-Industrial"`](http://wiki.ros.org/universal_robot/Tutorials/Getting%20Started%20with%20a%20Universal%20Robot%20and%20ROS-Industrial) to set up network using a router.

Download the repo [`ur_modern_driver`](https://github.com/ThomasTimm/ur_modern_driver) to `src` in your Universal Robot workspace, and `catkin_make`. If there is hardware interface error during catkin make, replace [`ur_hardware_interface.cpp`](https://github.com/iron-ox/ur_modern_driver/blob/883070d0b6c0c32b78bb1ca7155b8f3a1ead416c/src/ur_hardware_interface.cpp) in `ur_modern_driver/src` or [`follow the instruction here`](https://github.com/ros-industrial/ur_modern_driver/issues/135)

To connect your PC and an UR3, run the following launch file, (you need to `source devel/setup.bash` first, and go to each folder that includes the launch file to launch it)
```
  roslaunch ur_modern_driver ur3_bringup.launch robot_ip:=ROBOT_IP_ADDRESS

  roslaunch ur3_moveit_config ur3_moveit_planning_execution.launch

  roslaunch ur3_moveit_config moveit_rviz.launch config:=true
```
or run the launch file [`ur3_hardware/launch/rviz_config.launch`](https://github.com/Haoran-Zhao/US_UR3/blob/master/src/ur3_hardware/launch/rviz_config.launch)
You may need to change your joint limit file before you run any motion planning program on the hardware. ([`Example`](https://github.com/lihuang3/ur3_ROS-hardware/issues/1#issuecomment-422070509))

Get the joint states:
```
rostopic echo /joint_states
```
Get end effector position"
```
rosrun tf tf_echo /base_link /ee_link
```
#### 2. Network setup of Windows and Linux
Follow the instruction [`ROS/NetworkSetup`](http://wiki.ros.org/ROS/NetworkSetup)
##### 2.1 Linux troubleshooting
ssh Linux failed: port 22: Connection refused [`solution: reinstall shh`](https://stackoverflow.com/questions/17335728/connect-to-host-localhost-port-22-connection-refused)
##### 2.2 Windows troubleshooting
set ethernet as private, which is discoverable [`solution`](https://superuser.com/questions/627208/unable-to-ping-a-windows-machine-from-linux/1203485).

Allow ping through the firewall ICMPv4 private (do not enable domine!!!) [`solution`](https://www.faqforge.com/windows/windows-10/how-to-allow-ping-trough-the-firewall-in-windows-10/)

##### 2.3 ROS and Matlab network setting
ROS and Matlab network setting (can not recieve or publish topic)[`solution`](https://itectec.com/matlab/matlab-why-is-the-ros-subscriber-callback-in-matlab-not-triggered-when-messages-are-published-from-an-external-ros-node-not-in-matlab/)
in Linux change permanent
```
gedit .bashrc
```
if pc is not connected to ethernet, comment out last two line of .basrc file. 

#### 3. Jog Arm
Jog arm are from the repository [`Tokyo Opensource Robotics Kyokai Association
`](https://github.com/tork-a)
##### 3.1 Jog arm
The real time control code are from the repository ['jog_arm'](https://github.com/UTNuclearRoboticsPublic/jog_arm)
General issues can be found in the [`issue`](https://github.com/UTNuclearRoboticsPublic/jog_arm/issues)

##### 3.2 catkin_make Jog control
1. clone repository [`fake joint`](https://github.com/tork-a/fake_joint)
2. clone respository [`jog control`](https://github.com/tork-a/jog_control)
3. install [`moveit visual tools`](https://github.com/ros-planning/moveit_visual_tools)
4. catkin make ws

If there is a problem with jog_msgs:
1. Remove the jog_controller folder, and catkin_make.
2. paste the jog_controller folder back, and catkin_make.

#### 4. Image Processing

#### 5. ROS-Arduino
##### 5.1
[`official tutorial`](http://wiki.ros.org/rosserial_arduino/Tutorials)
[`Generating Message Header File`](http://wiki.ros.org/rosserial_client/Tutorials/Generating%20Message%20Header%20Files)

After you download rosserial, to generate custom messages you should follow the following step:
```
  cd <your workspace>
  source devel/setup.bash
  rosrun rosserial_arduino make_libraries.py /home/<username>/arduino-1.8.5/libraries
```
you can check you custom message folder at /home/<username>/arduino-1.8.5/libraries/ros_lib/ur5_notebook (or ur3_hardware)

To use arduino subscribe ROS topic:
[`Template for a ROS Subscriber Using rosserial on Arduino`](https://www.intorobotics.com/template-for-a-ros-subscriber-using-rosserial-on-arduino/)
1. compile /ur3_hardware/arduino_gripper/arduino_gripper.ino in Arduino IDE, and uplaod to board
2. Open a new Terminal and run initialize.roslaunch
3. Open another Terminal and start the subscriber node by typing the following command:
```
cd <your workspace>
source devel/setup.bash
rosrun rosserial_python serial_node.py /dev/ttyACM1
```
##### 5.2 In Arduino IDE open serial monitor
