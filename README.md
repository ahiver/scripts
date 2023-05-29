
# Setup Robot

## Preparation

Create workspace directory (by default ~/bees)

Inside workspace directory:

`git clone https://github.com/ahiver/scripts.git`

`cd scripts`
add `source <path to robot.env.bash>` to ~/.bashrc

`chmod +x *.bash`

## Update env variables

Update WORSPACE_DIR in robot.env.bash

Update path parameters in *.service files in services directory

## Install projects and dependencies

`scripts/robot_install.bash`

select ROS-Base

## Install additional useful apps

`scripts/install/install_robot_utils.bash`

## Add support of camera ov7982

`sudo nano /boot/firmware/config.txt\`

> Add dtoverlay=ov7251

`sudo reboot`

Check video0 device appeared after reboot:

`ls -l /dev/video*`

## ROS Nodes 

mavros and camera ros nodes are started automatically using services on OS load

## Start Estimating device pose using Visual Odometry

TODO
`scripts/vins/start_vins.bash`

## Record rosbags with sensors data

`scripts/record/record*.bash`

# Setup Developer Host Machine

## Preparation

Create workspace directory (by default ~/bees)

Inside workspace directory:

`git clone https://github.com/ahiver/scripts.git`

add `source <path to host.env.bash>` to ~/.bashrc

`chmode +x *.bash`

## Update env variables

Update WORKSPACE_DIR in host.env.bash

Update path parameters in *.service files in services directory

## Install projects and dependencies

`scripts/host_install.bash`

select Desktop-Full Install

## Fix wifi if macbook used as developer host

Add to /etc/init/host.conf
wlp2s0 stands for wifi link. It may be different on your machine.

`start on startup`
`task`
`iwconfig wlp2s0 txpower 10dBm`

## Install additional useful apps

`scripts/install/install_device_utils.bash`

## Start ROS Nodes 

in case we use robot as ROS master

`scripts/start/start_host.bash --master`

otherwise 

`scripts/start/start_host.bash`

## Start ROS Nodes on os load

Execute script to launch necessary nodes on load automatically
`scripts/start/host_start_on_load.bash`

## Sensors Calibration

### Camera

`scripts/calibrate/calibrate_cam.bash`

### IMU

`scripts/calibrate/calibrate_imu.bash`

### Camera-IMU

`scripts/calibrate/calibrate_imu.bash`

## Simulation of Visual Odometry using recorded rosbags with sensor data

TODO
`scripts/vins/start_vins.bash`

## View Camera Stream online

`scripts/gui/view_camera.bash`

# Multi machine ROS setup examples

Update ROS_MASTER_IP, HOST_IP, HOST_NAME, ROBOT_IP, ROBOT_NAME
in env.bash
