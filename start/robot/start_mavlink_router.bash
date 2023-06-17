#!/bin/bash

# source ${ENV_SCRIPT}

mavlink-routerd -e 0.0.0.0:14550 -e 127.0.0.1:14540 /dev/ttyACM0:921600