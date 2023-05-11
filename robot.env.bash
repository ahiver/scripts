#!/bin/bash

export WORKSPACE_DIR=/home/hiver/bees

source ${WORKSPACE_DIR}/scripts/env.bash

MASTER_IP=$ROS_MASTER_IP
if [ $ROS_MASTER_IP == $ROBOT_IP ]
then
    MASTER_IP=127.0.0.1
fi

export ROS_MASTER_URI=http://${MASTER_IP}:11311
export ROS_IP=$ROBOT_IP
export ROS_HOSTNAME=$ROBOT_NAME
