#!/bin/bash

if [ -f "/opt/ros/noetic/setup.bash" ]
then
    source /opt/ros/noetic/setup.bash
fi

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
export GPS_DIR=$PROJECTS_DIR/gps_ws
export MAVROS_DIR=$PROJECTS_DIR/mavros
export MAVLINK_ROUTER_DIR=$PROJECTS_DIR/mavlink_router

export CALIBRATION_TARGET_PATH=$CONFIGS_DIR/april.yaml

# Connect using USB
# export FCU_DEVICE=/dev/ttyACM0

# Connect using uart 4 through GPIO
export FCU_DEVICE=/dev/ttyAMA1

export FCU_BAUD_RATE=921600

export GPS_DEVICE=/dev/ttyUSB2
export GPS_BAUD_RATE=115200

export CAMERA_MODEL=pinhole-radtan
export CAMERA_TOPIC=/usb_cam/image_raw
export IMU_TOPIC=/mavros/imu/data_raw
export GPS_TOPIC=/gps_data

export MAVLINK_EXTERNAL_PORT1=14550
export MAVLINK_EXTERNAL_PORT2=14560
export MAVLINK_INTERNAL_PORT=14540

# export VINS_CONFIG=bee2
# export VINS_CONFIG=bee5
export VINS_CONFIG=bee_heavy2
# export VINS_CONFIG=bee2+5
