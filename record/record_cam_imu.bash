#!/bin/bash

if [ -z "$1" ]
then
      echo "Experiment name is not defined."
      exit 0
fi

EXPERIMENT_NAME=$1
BAG_DIR=$BAGS_DIR/$EXPERIMENT_NAME
mkdir -p $BAG_DIR

pushd ${BAG_DIR} > /dev/null
 
BAG_NAME=cam_imu.bag
BAG_PATH=$BAG_DIR/$BAG_NAME
echo Output path: ${BAG_PATH}
echo Press Ctrl+C to finish.
# rosbag record --lz4 --output-name=$BAG_NAME $CAMERA_TOPIC $IMU_TOPIC __name:=bag_recording
rosbag record --output-name=$BAG_NAME $CAMERA_TOPIC $IMU_TOPIC __name:=bag_recording
popd > /dev/null
