#!/bin/bash

set -x

source ../robot.env.bash
 
rostopic list

rostopic hz /usb_cam/image_raw

# rostopic echo -n1 /usb_cam/image_raw
# rostopic echo -n1 mavros/imu/data_raw

uvcdynctrl --device=video0 --get=Exposure

rosrun mavros mavsys rate --stream-id 1 300

rostopic hz /mavros/imu/data_raw

pushd ${OPEN_VINS_DIR} > /dev/null
source devel/setup.bash
popd > /dev/null

# Do not set origin here, it casuses interruption of sensor messages in mavros
# rosrun ov_msckf set_origin.py