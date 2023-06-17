#!/bin/bash

export WORKSPACE_DIR=/home/hiver/bees
source ${WORKSPACE_DIR}/scripts/env.bash

# MASTER_IP=$ROS_MASTER_IP
# if [ $ROS_MASTER_IP == $ROBOT_IP ]
# then
#     MASTER_IP=127.0.0.1
# fi

# export ROS_MASTER_IP=192.168.1.9
# export HOST_IP=192.168.1.9
# #export HOST_IP=192.168.11.114
# export HOST_NAME=uNest

# export ROBOT_IP=192.168.11.1
# export ROBOT_NAME=bee

MASTER_IP=127.0.0.1 #192.168.11.1

export ROBOT_NAME=bee

export LOGS_DIR=$WORKSPACE_DIR/logs

export ROS_MASTER_URI=http://${MASTER_IP}:11311
# export ROS_IP=192.168.11.1 #$ROBOT_IP
export ROS_IP=192.168.1.2 #$ROBOT_IP
# export ROS_HOSTNAME=bee #$ROBOT_NAME
