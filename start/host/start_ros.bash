#!/bin/bash

source ${ENV_SCRIPT}

if [ $ROS_MASTER_IP == $HOST_IP ]
then
    roscore
fi