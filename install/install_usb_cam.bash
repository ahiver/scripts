#!/bin/bash

sudo apt-get install libgflags-dev
sudo apt install libgoogle-glog-dev
sudo apt-get install protobuf-compiler libprotobuf-dev

// that line causes deinstall of some base ros packets, do this ahead of ros installation?
sudo apt install python3-rosdep2

sudo apt-get install ros-noetic-image-common
sudo apt install v4l-utils
sudo apt install libavcodec-dev
sudo apt install libswscale-dev

# ROS Camera node for ov7251
mkdir -p ${USB_CAM_DIR}/src

pushd ${USB_CAM_DIR}/src > /dev/null
git clone https://github.com/ahiver/usb_cam.git
popd > /dev/null

pushd ${USB_CAM_DIR} > /dev/null
rosdep install -y --from-paths src --ignore-src
catkin_make -DCMAKE_BUILD_TYPE=Release
popd > /dev/null