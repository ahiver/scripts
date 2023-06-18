#!/bin/bash

source ${ENV_SCRIPT}
# rosrun mavros mavros_node _fcu_url:=${FCU_DEVICE}:${FCU_BAUD_RATE}
# rosrun mavros mavros_node _fcu_url:=udp://0.0.0.0:14540@
sleep 10
rosrun mavros mavros_node _fcu_url:=udp://127.0.0.1:${MAVLINK_INTERNAL_PORT}@