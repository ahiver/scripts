#!/bin/bash

source /opt/ros/noetic/setup.bash

# Update these variables to correspond to your system setup 
export WORKSPACE_NAME=bees
export WORKSPACE_DIR=~/${WORKSPACE_NAME}

export ROS_MASTER_IP=192.168.1.9

export HOST_IP=192.168.1.9
export HOST_NAME=uNest

export ROBOT_IP=192.168.1.6
export ROBOT_NAME=bee
# End of variables to update

# These parameters may be used as is
export SCRIPTS_DIR=$WORKSPACE_DIR/scripts
export PROJECTS_DIR=$WORKSPACE_DIR/projects
export CONFIGS_DIR=$WORKSPACE_DIR/configs
export DOCS_DIR=$WORKSPACE_DIR/docs
export TMP_DIR=$WORKSPACE_DIR/tmp

export BAGS_DIR=$WORKSPACE_DIR/bags
export CALIBRATIONS_DIR=$WORKSPACE_DIR/calibrations

export KALIBR_DIR=$PROJECTS_DIR/kalibr_ws
export ALLAN_VARIANCE_DIR=$PROJECTS_DIR/allan_variance_ws
export OPEN_VINS_DIR=$PROJECTS_DIR/vins_ws
export USB_CAM_DIR=$PROJECTS_DIR/usb_cam_ws
export CERES_DIR=$PROJECTS_DIR/ceres_ws

export CALIBRATION_TARGET_PATH=$CONFIGS_DIR/april.yaml

export FCU_DEVICE=/dev/ttyACM0
export FCU_BAUD_RATE=912600

export CAMERA_MODEL=pinhole-radtan
export CAMERA_TOPIC=/usb_cam/image_raw
export IMU_TOPIC=/mavros/imu/data_raw
export VINS_DEVICE_CONFIG=bee
export VINS_SIMULATION_CONFIG=bee_sym
