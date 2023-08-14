#!/bin/bash

source ${ENV_SCRIPT}

# # Setup camera ROS node env
# pushd ${USB_CAM_DIR} > /dev/null

# source devel/setup.bash

# roslaunch --wait usb_cam usb_cam-test.launch
# # roslaunch usb_cam usb_cam-test.launch
# popd > /dev/null

roslaunch --wait video-stream-opencv camera.launch camera_name:=usb_cam


