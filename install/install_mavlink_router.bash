#!/bin/bash

mkdir -p ${MAVLINK_ROUTER_DIR}
pushd ${MAVLINK_ROUTER_DIR} > /dev/null

# download the source 
git clone https://github.com/intel/mavlink-router.git
cd mavlink-router
git submodule update --init --recursive
sudo apt install git meson ninja-build pkg-config gcc g++ systemd

# build and install
sudo apt install python3-pip
# sudo pip3 install --user meson
# meson.build:1:0: ERROR: Meson version is 0.53.2 but project requires >= 0.55
sudo pip3 install meson==0.55 --ignore-installed
meson setup build .
# ninja -C build
sudo ninja -C build install

# create a config file
# sudo mkdir /etc/mavlink-router
# cd /etc/mavlink-router
# sudo pico main.conf

