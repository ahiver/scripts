#!/bin/bash

# https://ardupilot.org/mavproxy/index.html

source ${ENV_SCRIPT}
mavproxy.py --master=${FCU_DEVICE} --baudrate=${FCU_BAUD_RATE} --aircraft=${ROBOT_NAME} --out=udpin:0.0.0.0:${MAVPROXY_PORT} --modedebug=3 --quadcopter --daemon --state-basedir=${LOGS_DIR} --cmd="module load dataflash_logger; dataflash_logger set verbose true; dataflash_logger start;"

# This module syncs the connected autopilot with the system (GCS) time. This is useful if the autopilot does not have a GPS module.
# module load system_time