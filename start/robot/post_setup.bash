#!/bin/bash

source ${ENV_SCRIPT}

sleep 15

# set imu mavlink connection rate to 300 hz
rosrun mavros mavsys rate --stream-id 1 300

sleep 10

# start vins

pushd ${SCRIPTS_DIR}/vins > /dev/null

./start_vins.bash

popd > /dev/null