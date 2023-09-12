#!/bin/bash

# ROS
# mkdir -p ${TMP_DIR}
# pushd ${TMP_DIR} > /dev/null
# wget -c https://raw.githubusercontent.com/qboticslabs/ros_install_noetic/master/ros_install_noetic.sh && chmod +x ./ros_install_noetic.sh && ./ros_install_noetic.sh

# popd > /dev/null
# rm -rf ${TMP_DIR}

# Run this command to add the ROS Noetic repo to apt's source lis
echo "deb http://packages.ros.org/ros/ubuntu focal main" | sudo tee /etc/apt/sources.list.d/ros-focal.list
# Run the following command to add the ROS key to authenticate the ROS packages
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Update ROS package index
sudo apt update
# Install ROS Noetic metapackage on Ubuntu 20.0
# sudo apt install ros-noetic-desktop-full
# sudo apt install ros-noetic-ros-desktop
# sudo apt install ros-noetic-ros-base
sudo apt install ros-noetic-ros-core


