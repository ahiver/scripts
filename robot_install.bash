#!/bin/bash

source ./env.bash

pushd $SCRIPTS_DIR > /dev/null

# make bash scripts executable
find . -type f -name *.bash -print0 | xargs -0 chmod +x

./install/install_ros.bash
./install/install_mavros.bash
./install/install_ros_plugins.bash
./install/install_vins.bash
./install/install_robot_utils.bash

popd > /dev/null

# ROS Camera node for ov7251
mkdir -p ${USB_CAM_DIR}/src

pushd ${USB_CAM_DIR}/src > /dev/null
git clone <https://github.com/ai-are-better-than-humans/usb_cam.git
popd > /dev/null

pushd ${USB_CAM_DIR} > /dev/null
rosdep install -y --from-paths src --ignore-src
catkin_make
popd > /dev/null

