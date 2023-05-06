#!/bin/bash

mkdir -p ${CERES_DIR}

pushd ${CERES_DIR} > /dev/null
# Ceres. Used by open_vins
git clone https://ceres-solver.googlesource.com/ceres-solver
cd ceres-solver
git checkout tags/2.0.0
cd ceres-solver
git checkout tags/${CERES_VERSION}
mkdir build && cd build
cmake ..
make
sudo make install
popd > /dev/null

# our open_vins fork
mkdir -p ${OPEN_VINS_DIR}/src

pushd ${OPEN_VINS_DIR}/src > /dev/null
git clone https://github.com/ahiver/vins.git
cd ${OPEN_VINS_DIR}
rosdep install -y --from-paths src --ignore-src
catkin_make
popd > /dev/null
