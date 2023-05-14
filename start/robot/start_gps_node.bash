#!/bin/bash

source ${ENV_SCRIPT}

# Setup camera ROS node env
pushd ${GPS_DIR} > /dev/null

source devel/setup.bash

rosrun --wait gps gps_publisher.py

popd > /dev/null


