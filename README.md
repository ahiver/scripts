
# Setup Robot

## Preparation

Create workspace directory (by default ~/bees)

Inside workspace directory:

`git clone https://github.com/ahiver/scripts.git`

add `source <path to env.bash>` to ~/.bashrc

`chmode +x env.bash`

## Update env variables

Update variables in env.bash in correspondance to your setup

Update path to env.bass in start/start_robot.bash

Update path to env.bass in start/robot.service

## Install projects and dependencies

`chmod +x robot_install.bash`
`scripts/robot_install.bash`

select ROS-Base

## Install additional useful apps

`scripts/install/install_host_utils.bash`

## Add support of camera ov7982

`sudo nano /boot/firmware/config.txt\`

> Add dtoverlay=ov7251

`sudo reboot`

Check video0 device appeared after reboot:

`ls -l /dev/video*`

## Start ROS Nodes 

in case we use robot as ROS master

`scripts/start/start_robot.bash --master`

otherwise 

`scripts/start/start_robot.bash`

## Start ROS Nodes on os load

Execute script to launch necessary nodes on load automatically
`scripts/start/robot_start_on_load.bash`

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

add `source <path to env.bash>` to ~/.bashrc

`chmode +x env.bash`

## Update env variables

Update variables in env.bash in correspondance to your setup

Update path to env.bash in start/start_host.bash

Update path to env.bash in start/host.service

## Install projects and dependencies

`chmod +x host_install.bash`
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

## Host is master

nano /etc/hosts

127.0.0.1 uNest
192.168.1.6 bee

nano ~/.bashrc

source /opt/ros/noetic/setup.bash
export ROS_MASTER_URI=http://127.0.0.1:11311
export ROS_IP=192.168.1.9
export ROS_HOSTNAME=uNest

source ~./bashrc

## Robot is slave

nano /etc/hosts

127.0.0.1 bee
192.168.1.9 uNest

nano ~/.bashrc

source /opt/ros/noetic/setup.bash
export ROS_MASTER_URI=http://192.168.1.3:11311
export ROS_IP=192.168.1.6
export ROS_HOSTNAME=bee

source ~./bashrc



