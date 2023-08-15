#!/bin/bash

source ${ENV_SCRIPT}

sleep 20

# set imu mavlink connection rate to 300 hz
rosrun mavros mavsys rate --stream-id 1 300

sleep 20

# start vins

pushd ${SCRIPTS_DIR}/vins > /dev/null

# ./start_vins.bash

popd > /dev/null