#! /bin/bash

### BEGIN INIT

gnome-terminal -- bash -c "source /opt/ros/melodic/setup.bash;source /home/tringai/tringai_robot/devel/setup.bash;roslaunch qt_ros_test qt_xf_mic_asr_offline.launch"

wait
exit 0


