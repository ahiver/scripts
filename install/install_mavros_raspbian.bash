#!/bin/bash

# ROS
mkdir -p ${TMP_DIR}
pushd ${TMP_DIR} > /dev/null

# MavRos from binaries. For Ubuntu
# sudo apt-get install ros-noetic-mavros ros-noetic-mavros-extras
# wget https://raw.githubusercontent.com/mavlink/mavros/master/mavros/scripts/install_geographiclib_datasets.sh
# chmod a+x install_geographiclib_datasets.sh
# ./install_geographiclib_datasets.sh

# MavRos from sources. For Raspbian 
# https://github.com/mavlink/mavros/blob/master/mavros/README.md#installation
sudo apt update
sudo apt-get install -y python-catkin-tools python-rosinstall-generator python-wstool -y

# 1. Create the workspace: unneeded if you already has workspace
mkdir -p ${MAVROS_DIR}/src
cd ${MAVROS_DIR}
catkin init
wstool init src

# 2. Install MAVLink
#    we use the Kinetic reference for all ROS distros as it's not distro-specific and up to date
rosinstall_generator --rosdistro noetic mavlink | tee /tmp/mavros.rosinstall

# 3. Install MAVROS: get source (upstream - released)
rosinstall_generator --upstream mavros | tee -a /tmp/mavros.rosinstall
# alternative: latest source
# rosinstall_generator --upstream-development mavros | tee -a /tmp/mavros.rosinstall
# For fetching all the dependencies into your catkin_ws, just add '--deps' to the above scripts
# ex: rosinstall_generator --upstream mavros --deps | tee -a /tmp/mavros.rosinstall

# 4. Create workspace & deps
wstool merge -t src /tmp/mavros.rosinstall
wstool update -t src -j4
# rosdep install --from-paths src --ignore-src -y
rosdep install -y --from-paths src --ignore-src --rosdistro noetic -r --os=debian:buster

# 5. Install GeographicLib datasets:
./src/mavros/mavros/scripts/install_geographiclib_datasets.sh

# 6. Build source
catkin build

# 7. Make sure that you use setup.bash or setup.zsh from workspace.
#    Else rosrun can't find nodes from this workspace.
source devel/setup.bash

popd > /dev/null
rm -rf ${TMP_DIR}