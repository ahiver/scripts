#!/bin/bash

sudo apt install python3-rosdep2

sudo apt-get install libgflags-dev
sudo apt install libgoogle-glog-dev
sudo apt-get install protobuf-compiler libprotobuf-dev

mkdir -p ${CERES_DIR}

pushd ${CERES_DIR} > /dev/null

# Requried by Ceres
sudo apt-get install -y libopenblas-dev

# Ceres. Used by open_vins to solve linear equations
git clone https://ceres-solver.googlesource.com/ceres-solver
# cd ceres-solver
# git checkout tags/2.0.0
# mkdir build && cd build
# cmake ..
# make -j4
sudo make install
popd > /dev/null

# our open_vins fork
# mkdir -p ${OPEN_VINS_DIR}/src

# pushd ${OPEN_VINS_DIR}/src > /dev/null
# git clone https://github.com/ahiver/vins.git
# cd ${OPEN_VINS_DIR}
# rosdep install -y --from-paths src --ignore-src
# catkin_make -j4 -DCMAKE_BUILD_TYPE=Release
# popd > /dev/null
