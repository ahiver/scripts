#!/bin/bash

source ../../robot.env.bash

sudo systemctl restart ros
sudo systemctl restart mavros
sudo systemctl restart camera
 
rostopic list

rostopic echo -n1 /usb_cam/image_raw
rostopic echo -n1 mavros/imu/data_raw
