# mercury_x1_ros
Use of Mercury X1 mobile chassis ROS

## Package Download and Install

```bash
$ git clone https://github.com/elephantrobotics/mercury_x1_ros.git mercury_x1_ros/src
$ cd ~/mercury_x1_ros/turn_on_mercury_robot/scripts
$ ./apt_install.sh
$ cd ~/mercury_x1_ros
$ catkin_make
$ source devel/setup.bash
```

## Bottom car keyboard control

**1. First start the car’s underlying communication program:**

```bash
$ roslaunch turn_on_mercury_robot turn_on_mercury_robot.launch
```

**2. Then start the keyboard control program:**

```bash
$ roslaunch mercury_x1_teleop keyboard_teleop.launch
```

## Bottom handle control

**1. First start the car’s underlying communication program:**

```bash
$ roslaunch turn_on_mercury_robot turn_on_mercury_robot.launch
```

**2. Then start the handle control program:**

```bash
$ roslaunch mercury_x1_ps2 mercury_x1_ps2.launch
```

## Chassis car + upper body robotic arm control

**1. First start the car's underlying communication program and map building:**

```bash
$ roslaunch turn_on_mercury_robot mapping.launch
```

**2. Then Loading display chassis car + upper body robot arm urdf model:**

```bash
$ roslaunch turn_on_mercury_robot slider_control.launch
```

**3. Then Turn on upper body robotic arm control:**

```bash
$ rosrun turn_on_mercury_robot slider_control.py
```

**4. Finally, start the chassis car keyboard control program:**

```bash
$ roslaunch mercury_x1_teleop keyboard_teleop.launch
```

