#!/bin/bash

# TODO in separate terminals 
rosrun mavros mavros_node \_fcu_url:=/dev/ttyACM0:912600

pushd $USB_CAM_DIR > /dev/null
source devel/setup.bash
popd > /dev/null
roslaunch usb_cam usb_cam-test.launch

pushd ${OPEN_VINS_DIR} > /dev/null
source devel/setup.bash
popd > /dev/null
roslaunch ov_msckf ${VINS_CONFIG}.launch config:=${VINS_CONFIG} verbosity:=DEBUG