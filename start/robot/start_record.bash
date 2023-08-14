#!/bin/bash

source ${ENV_SCRIPT}

# Setup camera ROS node env
pushd ${SCRIPTS_DIR}/record > /dev/null

./record_cam_imu_vins.bash "$(date +"%FT%H%M%S")"

popd > /dev/null