#!/bin/bash

# TODO: update path to yours
source /home/astrib/bees/scripts/host.env.bash

if [ $ROS_MASTER_IP == $HOST_IP ]
then
    roscore
fi