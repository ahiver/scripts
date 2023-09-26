#!/bin/bash

# cam_imu.bag aisre expected to be in bags/{experiment_name}/calibration
# april.yaml is used from configs 

if [ -z "$1" ]
then
      echo "Experiment name is not defined."
      exit 0
fi

if [ -z "$2" ]
then
      echo "Bag Frequency is not defined."
      exit 0
fi

EXPERIMENT_NAME=$1
BAG_FREQ=$2 # 10.0
BAG_DIR=$BAGS_DIR/$EXPERIMENT_NAME
# BAG_NAME=cam_static.bag
BAG_NAME=cam_imu.bag
BAG_PATH=$BAG_DIR/calibration/$BAG_NAME
OUTPUT_DIR=$CALIBRATIONS_DIR/${EXPERIMENT_NAME}/cam
echo Press Ctrl+C to finish.
mkdir -p $OUTPUT_DIR
source $KALIBR_DIR/devel/setup.bash
CALIBRATE_TARGET_PATH=$(pwd)/configs/april.yaml
pushd $OUTPUT_DIR > /dev/null
rosrun kalibr kalibr_calibrate_cameras --target ${CALIBRATE_TARGET_PATH} --models ${CAMERA_MODEL} --topics ${CAMERA_TOPIC} --bag $BAG_PATH --bag-freq $BAG_FREQ
echo Output path: ${OUTPUT_DIR}
popd > /dev/null
