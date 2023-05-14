#!/bin/bash

# allan variance. Imu calibration.
mkdir -p ${ALLAN_VARIANCE_DIR}/src

pushd ${ALLAN_VARIANCE_DIR}/src > /dev/null
git clone https://github.com/ori-drs/allan_variance_ros.git
cd ${ALLAN_VARIANCE_DIR}
rosdep install -y --from-paths src --ignore-src
catkin_make
popd > /dev/null