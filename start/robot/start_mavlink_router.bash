#!/bin/bash

source ${ENV_SCRIPT}

# This module syncs the connected autopilot with the system (GCS) time. This is useful if the autopilot does not have a GPS module.
module load system_time

# mavlink-routerd -e 127.0.0.1:14541 -e 127.0.0.1:14540 ${FCU_DEVICE}:${FCU_BAUD_RATE} --log
# logs in /var/log/flight-stack
# tcp port 5760
# mavlink-routerd -e 127.0.0.1:14550 -e 127.0.0.1:14540 ${FCU_DEVICE}:${FCU_BAUD_RATE} --log ${LOGS_DIR}
mavlink-routerd --conf-file ${SCRIPTS_DIR}/mavlink_router.conf --log ${LOGS_DIR}