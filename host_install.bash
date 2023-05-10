#!/bin/bash

source ./env.bash

pushd $SCRIPTS_DIR > /dev/null

# make bash scripts executable
find . -type f -name "*.bash" -print0 | xargs -0 chmod +x

./install/install_docs.bash
#./install/install_ros.bash
./install/install_ros_plugins.bash
./install/install_vins.bash
./install/install_host_utils.bash

popd > /dev/null

# kalibr. Camera-Imu calibration
mkdir -p ${KALIBR_DIR}/src

pushd ${KALIBR_DIR}/src > /dev/null
git clone https://github.com/ethz-asl/kalibr
cd ${KALIBR_DIR}
rosdep install -y --from-paths src --ignore-src
catkin_make
popd > /dev/null

# allan variance. Imu calibration.
mkdir -p ${ALLAN_VARIANCE_DIR}/src

pushd ${ALLAN_VARIANCE_DIR}/src > /dev/null
git clone https://github.com/ori-drs/allan_variance_ros.git
cd ${ALLAN_VARIANCE_DIR}
rosdep install -y --from-paths src --ignore-src
catkin_make
popd > /dev/null

# install services to start ros and ros nodes on ubuntu startup
# Comment out if you prefer to run manually
pushd ${SCRIPTS_DIR}/install > /dev/null
./install_host_services.bash
popd > /dev/null