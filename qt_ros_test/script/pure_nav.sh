#! /bin/bash

### BEGIN INIT

gnome-terminal -- bash -c "source /opt/ros/melodic/setup.bash;source /home/tringai/tringai_robot/devel/setup.bash;roslaunch turn_on_tringai_robot pure3d_navigation.launch"

wait
exit 0


