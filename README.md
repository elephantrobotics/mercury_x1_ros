# mercury_x1_ros
Use of Mercury X1 mobile chassis ROS

## Package Download and Install

```bash
$ git clone https://github.com/elephantrobotics/mercury_x1_ros.git
$ cd ~/mercury_x1_ros
$ catkin_make
$ source devel/setup.bash
```

## Bottom car keyboard control

**1. First start the car’s underlying communication program:**

```bash
$ roslaunch turn_on_tringai_robot turn_on_tringai_robot.launch
```

**2. Then start the keyboard control program:**

```bash
$ roslaunch mercury_x1_teleop keyboard_teleop.launch
```

## Bottom handle control

**1. First start the car’s underlying communication program:**

```bash
$ roslaunch turn_on_tringai_robot turn_on_tringai_robot.launch
```

**2. Then start the handle control program:**

```bash
$ roslaunch mercury_x1_ps2 mercury_x1_ps2.launch
```
