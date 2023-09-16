#!/bin/bash

# ROS Camera node for ov7251
mkdir -p ${USB_CAM_DIR}/src

pushd ${USB_CAM_DIR}/src > /dev/null
git clone https://github.com/ahiver/usb_cam.git
popd > /dev/null

pushd ${USB_CAM_DIR} > /dev/null
rosdep install -y --from-paths src --ignore-src
catkin_make -DCMAKE_BUILD_TYPE=Release
popd > /dev/null