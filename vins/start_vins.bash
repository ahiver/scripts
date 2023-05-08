#!/bin/bash

pushd ${OPEN_VINS_DIR} > /dev/null
source devel/setup.bash
popd > /dev/null
roslaunch ov_msckf ${VINS_CONFIG}.launch config:=${VINS_CONFIG} verbosity:=DEBUG