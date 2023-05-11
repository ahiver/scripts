#!/bin/bash

source /home/hiver/bees/scripts/robot.env.bash

# Setup camera ROS node env
pushd /home/hiver/bees/scripts/record > /dev/null

./record_cam_imu.bash "$(date +"%FT%H%M%S").rosbag"

popd > /dev/null