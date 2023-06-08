#!/bin/bash

set -x

source ../../robot.env.bash

sudo systemctl restart ros

sleep 2

sudo systemctl restart mavros
sudo systemctl restart camera
 
rostopic list

rostopic echo -n1 /usb_cam/image_raw
rostopic echo -n1 mavros/imu/data_raw

uvcdynctrl --device=video0 --get=Exposure