#!/bin/bash
# Outdated!

source ./robot.env.bash

pushd $SCRIPTS_DIR > /dev/null

# make bash scripts executable
find . -type f -name *.bash -print0 | xargs -0 chmod +x

./install/install_ros_raspian.bash
# TODO: mavros installation on Raspbian should be made from sources and has problems
./install/install_mavros_raspbian.bash
./install/install_ros_plugins.bash
./install/install_vins.bash
./install/install_usb_cam.bash
./install/install_gps.bash
./install/install_robot_utils.bash
./install/install_robot_services.bash
popd > /dev/null

# If you get a “permission denied” error message when connecting to serial devices, the user permissions may need to be changed:
sudo usermod -a -G dialout hiver

sudo timedatectl set-timezone Europe/Kiev

