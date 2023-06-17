#!/bin/bash

pushd ${MAVLINK_ROUTER_DIR} > /dev/null

# download the source 
git clone https://github.com/intel/mavlink-router.git
cd mavlink-router
git submodule update --init --recursive
sudo apt install git meson ninja-build pkg-config gcc g++ systemd

# build and install
sudo apt install python3-pip
sudo pip3 install meson
meson setup build .
ninja -C build

# create a config file
# sudo mkdir /etc/mavlink-router
# cd /etc/mavlink-router
# sudo pico main.conf

