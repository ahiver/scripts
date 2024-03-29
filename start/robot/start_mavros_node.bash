#!/bin/bash

source ${ENV_SCRIPT}
# rosrun mavros mavros_node _fcu_url:=${FCU_DEVICE}:${FCU_BAUD_RATE}
# rosrun mavros mavros_node _fcu_url:=udp://0.0.0.0:14540@
sleep 10

# set imu mavlink connection rate to 300 hz
# rosrun mavros mavsys rate --stream-id 1 300

# start mavros node
rosrun mavros mavros_node _fcu_url:=udp://127.0.0.1:${MAVLINK_INTERNAL_PORT}@