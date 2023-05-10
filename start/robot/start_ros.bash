#!/bin/bash

source /home/hiver/bees/scripts/robot.env.bash

if [ $ROS_MASTER_IP == $ROBOT_IP ]
then
    roscore
fi

