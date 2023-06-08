#!/bin/bash

export WORKSPACE_DIR=/home/astrib/bees

source ${WORKSPACE_DIR}/scripts/env.bash

# MASTER_IP=$ROS_MASTER_IP
# if [ $ROS_MASTER_IP == $HOST_IP ]
# then
#     MASTER_IP=127.0.0.1
# fi

# uncomment if robot is master
# MASTER_IP=192.168.11.1

# uncomment if robot is master and connected thouth eth
MASTER_IP=192.168.1.2
# uncomment if dev machine is master
# MASTER_IP=127.0.0.1



export ROS_MASTER_URI=http://${MASTER_IP}:11311
export ROS_IP=192.168.1.9 #92.168.11.114 #127.0.0.1 #$HOST_IP
export ROS_HOSTNAME=uNest #$HOST_NAME