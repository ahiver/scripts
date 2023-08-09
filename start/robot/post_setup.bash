#!/bin/bash

# set imu mavlink connection rate to 300 hz
rosrun mavros mavsys rate --stream-id 1 300