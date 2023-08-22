#!/bin/bash

set -x

source ../../robot.env.bash
 
rostopic list

rostopic echo -n1 /usb_cam/image_raw
rostopic echo -n1 mavros/imu/data_raw

uvcdynctrl --device=video0 --get=Exposure