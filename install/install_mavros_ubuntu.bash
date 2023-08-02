#!/bin/bash

# ROS
mkdir -p ${TMP_DIR}
pushd ${TMP_DIR} > /dev/null

# MavRos from binaries. For Ubuntu
sudo apt-get install ros-noetic-mavros ros-noetic-mavros-extras
wget https://raw.githubusercontent.com/mavlink/mavros/master/mavros/scripts/install_geographiclib_datasets.sh
chmod a+x install_geographiclib_datasets.sh
sudo ./install_geographiclib_datasets.sh

popd > /dev/null
rm -rf ${TMP_DIR}