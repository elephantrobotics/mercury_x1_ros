#! /bin/bash

### BEGIN INIT

gnome-terminal -- bash -c "source /opt/ros/melodic/setup.bash;source /home/tringai/tringai_robot/devel/setup.bash;roslaunch usb_cam usb_cam-test.launch"

gnome-terminal -- bash -c "source /opt/ros/melodic/setup.bash;source /home/tringai/tringai_robot/devel/setup.bash;rosrun web_video_server web_video_server"

wait
exit 0


