#!/bin/bash

# https://ardupilot.org/mavproxy/index.html

source ${ENV_SCRIPT}
# mavproxy.py --master=udp:127.0.0.1:14541 --baudrate=${FCU_BAUD_RATE} --streamrate=-1 --aircraft=${ROBOT_NAME} --out=udpin:0.0.0.0:${MAVPROXY_PORT} --moddebug=3 --quadcopter --daemon --state-basedir=${LOGS_DIR} --cmd="module load dataflash_logger; dataflash_logger set verbose true; dataflash_logger start;"
mavproxy.py --master=udp:127.0.0.1:14541 --baudrate=${FCU_BAUD_RATE} --streamrate=-1 --aircraft=${ROBOT_NAME} --out=udpin:0.0.0.0:${MAVPROXY_PORT} --moddebug=3 --quadcopter --daemon --state-basedir=${LOGS_DIR} --cmd="module load dataflash_logger; dataflash_logger set verbose true; dataflash_logger start;"

# This module syncs the connected autopilot with the system (GCS) time. This is useful if the autopilot does not have a GPS module.
# module load system_time