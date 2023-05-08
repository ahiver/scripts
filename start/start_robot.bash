#!/bin/bash

source /home/bee/bees/scripts/env.bash

MASTER_IP=$ROS_MASTER_IP
if [ $ROS_MASTER_IP == $ROBOT_IP ]
then
    MASTER_IP="127.0.0.1"
fi

export ROS_MASTER_URI=http://${MASTER_IP}:11311
export ROS_IP=$ROBOT_IP
export ROS_HOSTNAME=$ROBOT_NAME

# Setup camera ROS node env
pushd $USB_CAM_DIR > /dev/null
source devel/setup.bash
popd > /dev/null

if [ $ROS_MASTER_IP == $HOST_IP ]
then
    roscore | roslaunch usb_cam usb_cam-test.launch | rosrun mavros mavros_node _fcu_url:=${FCU_DEVICE}:${FCU_BAUD_RATE}
else
    roslaunch usb_cam usb_cam-test.launch | rosrun mavros mavros_node _fcu_url:=${FCU_DEVICE}:${FCU_BAUD_RATE}
fi




