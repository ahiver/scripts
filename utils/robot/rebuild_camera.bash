#!/bin/bash

source ../../robot.env.bash

pushd ${USB_CAM_DIR} > /dev/null

catkin_make -DCMAKE_BUILD_TYPE=Release

# sudo systemctl disable camera
# sudo systemctl enable camera
sudo systemctl restart camera
 
rostopic hz /usb_cam/image_raw

uvcdynctrl --device=video0 --get=Exposure

popd > /dev/null