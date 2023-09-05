#!/bin/bash

# https://ardupilot.org/mavproxy/index.html

source ${ENV_SCRIPT}
# Uncomment to use over mavlink_router
# mavproxy.py --master=udp:127.0.0.1:14541 --baudrate=${FCU_BAUD_RATE} --streamrate=-1 --aircraft=${ROBOT_NAME} --out=udpin:127.0.0.1:14560 --moddebug=3 --quadcopter --daemon --state-basedir=${LOGS_DIR} --cmd="module load dataflash_logger; dataflash_logger set verbose true; dataflash_logger start;"

# This module syncs the connected autopilot with the system (GCS) time. This is useful if the autopilot does not have a GPS module.
# module load system_time

# Uncomment to use without mavlink router
~/.local/bin/mavproxy.py --master=${FCU_DEVICE} --baudrate=${FCU_BAUD_RATE} --streamrate=-1 --aircraft=bee --out=udpin:0.0.0.0:${MAVLINK_EXTERNAL_PORT1} --out=udpin:0.0.0.0:${MAVLINK_EXTERNAL_PORT2} --out=udp:127.0.0.1:${MAVLINK_INTERNAL_PORT} --moddebug=3 --quadcopter --daemon --state-basedir=${LOGS_DIR} --cmd="module load system_time; module load dataflash_logger; dataflash_logger set verbose true; dataflash_logger start;"
