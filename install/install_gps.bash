#!/bin/bash

mkdir -p ${GPS_DIR}/src

pushd ${GPS_DIR}/src > /dev/null
git clone https://github.com/ahiver/gps
cd ${GPS_DIR}
rosdep install -y --from-paths src --ignore-src
catkin_make
popd > /dev/null