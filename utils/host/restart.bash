#!/bin/bash

source ../../host.env.bash

sudo systemctl restart ros

rostopic list
 
rosrun rviz rviz -d ${OPEN_VINS_DIR}/src/vins/ov_msckf/launch/display.rviz