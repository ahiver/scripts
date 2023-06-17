#!/bin/bash

source ${ENV_SCRIPT}
# rosrun mavros mavros_node _fcu_url:=${FCU_DEVICE}:${FCU_BAUD_RATE}
rosrun mavros mavros_node _fcu_url:=udp://@localhost