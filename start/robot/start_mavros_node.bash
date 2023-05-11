#!/bin/bash

source /home/hiver/bees/scripts/robot.env.bash

rosrun mavros mavros_node _fcu_url:=${FCU_DEVICE}:${FCU_BAUD_RATE}