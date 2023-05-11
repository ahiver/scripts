#!/bin/bash

source /home/hiver/bees/scripts/robot.env.bash

# Setup camera ROS node env
pushd /home/hiver/bees/projects/usb_cam_ws > /dev/null

source devel/setup.bash

roslaunch --wait usb_cam usb_cam-test.launch

popd > /dev/null


