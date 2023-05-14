#!/bin/bash

# kalibr. Camera-Imu calibration
mkdir -p ${KALIBR_DIR}/src

pushd ${KALIBR_DIR}/src > /dev/null
git clone https://github.com/ethz-asl/kalibr
cd ${KALIBR_DIR}
rosdep install -y --from-paths src --ignore-src
catkin_make
popd > /dev/null