#!/bin/bash

source ../../host.env.bash

sudo systemctl restart ros
 
rosrun rviz rviz -d ${OPEN_VINS_DIR}/src/vins/ov_msckf/launch/display.rviz