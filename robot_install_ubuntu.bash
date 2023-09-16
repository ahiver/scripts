#!/bin/bash

set -x

# commenting out because of Waiting for cache lock: Could not get lock /var/lib/dpkg/lock-frontend. It is held by process 2753 (unattended-upgr) issue
# Switch off unattended updates
# sudo systemctl stop unattended-upgrades
# sudo systemctl disable unattended-upgrades

# sudo apt-get purge unattended-upgrades



source ./robot.env.bash

pushd $SCRIPTS_DIR > /dev/null

# make bash scripts executable
find . -type f -name *.bash -print0 | xargs -0 chmod +x

./install/install_compiler.bash
./install/install_ros_ubuntu.bash
./install/install_mavros_ubuntu.bash
./install/install_ros_plugins.bash
./install/install_vins.bash
./install/install_usb_cam.bash
./install/install_opencv_cam.bash
# ./install/install_gps.bash
./install/install_robot_utils.bash
./install/install_mavproxy.bash
./install/install_mavlink_router.bash
./install/install_robot_services.bash
./install/install_hardware.bash
popd > /dev/null


# If you get a “permission denied” error message when connecting to serial devices, the user permissions may need to be changed:

sudo usermod -a -G dialout hiver

sudo timedatectl set-timezone Europe/Kiev
