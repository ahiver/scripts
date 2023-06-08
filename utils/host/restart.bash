#!/bin/bash

set -x

source ../../host.env.bash

sudo systemctl restart ros

sleep 2

rostopic list

rostopic echo -n1 /usb_cam/image_raw
rostopic echo -n1 mavros/imu/data_raw
 
rviz -d ${OPEN_VINS_DIR}/src/vins/ov_msckf/launch/display.rviz