#!/bin/bash

# https://varhowto.com/install-ros-noetic-raspberry-pi-4/
# ROS on Raspian (based on buster Dabian)
mkdir -p ${TMP_DIR}

# Set up ROS Noetic repo
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu buster main" > /etc/apt/sources.list.d/ros-noetic.list'

# Add official ROS key
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# Install build dependencies to compile ROS Noetic packages on Raspberry Pi 4
sudo apt update
sudo apt-get install -y python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential cmake

# Download ROS Noetic dependency sources/repos
sudo rosdep init && rosdep update
mkdir ~/ros_catkin_ws && cd ~/ros_catkin_ws
# rosinstall_generator desktop-full --rosdistro noetic --deps --wet-only --tar > noetic-ros-wet.rosinstall
# rosinstall_generator desktop --rosdistro noetic --deps --wet-only --tar > noetic-ros-wet.rosinstall
rosinstall_generator ros_comm --rosdistro noetic --deps --wet-only --tar > noetic-ros-wet.rosinstall
wstool init src noetic-ros-wet.rosinstall
rosdep install -y --from-paths src --ignore-src --rosdistro noetic -r --os=debian:buster

