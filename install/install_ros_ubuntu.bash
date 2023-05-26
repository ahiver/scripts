#!/bin/bash

# ROS
mkdir -p ${TMP_DIR}
pushd ${TMP_DIR} > /dev/null
wget -c https://raw.githubusercontent.com/qboticslabs/ros_install_noetic/master/ros_install_noetic.sh && chmod +x ./ros_install_noetic.sh && ./ros_install_noetic.sh

popd > /dev/null
rm -rf ${TMP_DIR}