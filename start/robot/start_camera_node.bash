#!/bin/bash

source /home/hiver/bees/scripts/robot.env.bash

# Setup camera ROS node env
pushd $USB_CAM_DIR > /dev/null

source devel/setup.bash

sleep 5
roslaunch --wait usb_cam usb_cam-test.launch

popd > /dev/null


