#!/bin/bash

mkdir -p ${GPS_DIR}/src

pushd ${GPS_DIR}/src > /dev/null
git clone https://github.com/ahiver/gps
cd ${GPS_DIR}
rosdep install -y --from-paths src --ignore-src
sudo apt install python3-pip
pip3 install pyserial 
pip3 install utm
catkin_make
popd > /dev/null