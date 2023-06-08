#!/bin/bash

source ../../robot.env.bash

pushd ${OPEN_VINS_DIR} > /dev/null

catkin_make -DCMAKE_BUILD_TYPE=Release

popd > /dev/null