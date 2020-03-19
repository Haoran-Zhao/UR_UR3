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
Allow ping through the firewall ICMPv4 (both private and domine) [`solution`](https://www.faqforge.com/windows/windows-10/how-to-allow-ping-trough-the-firewall-in-windows-10/)
#### 3. Image Processing

#### 4. ROS-Arduino
##### 4.1
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
##### 4.2 In Arduino IDE open serial monitor
