#!/bin/bash

# To see visualization
# Run rvis
# And choose ov_msckf/launch/display.rviz configuration

pushd ${OPEN_VINS_DIR} > /dev/null
source devel/setup.bash
popd > /dev/null
roslaunch ov_msckf bee_offline.launch config:=${VINS_CONFIG} verbosity:=DEBUG