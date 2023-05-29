#!/bin/bash

source ./robot.env.bash

pushd $SCRIPTS_DIR > /dev/null

# make bash scripts executable
find . -type f -name *.bash -print0 | xargs -0 chmod +x

./install/install_ros_raspian.bash
# ./install/install_mavros_ubuntu.bash
./install/install_mavros_raspbian.bash
./install/install_ros_plugins.bash
./install/install_vins.bash
./install/install_usb_cam.bash
./install/install_gps.bash
./install/install_robot_utils.bash
./install_robot_services.bash
popd > /dev/null

sudo timedatectl set-timezone Europe/Kyiv

