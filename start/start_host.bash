#!/bin/bash

# TODO: update path to yours
source /home/astrib/bees/scripts/env.bash

MASTER_IP=$ROS_MASTER_IP
if [ $ROS_MASTER_IP == $HOST_IP ]
then
    MASTER_IP="127.0.0.1"
fi

export ROS_MASTER_URI=http://${MASTER_IP}:11311
export ROS_IP=$HOST_IP
export ROS_HOSTNAME=$HOST_NAME

if [ $ROS_MASTER_IP == $HOST_IP ]
then
    roscore
fi