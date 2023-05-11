#!/bin/bash

source ${ENV_SCRIPT}

# Setup camera ROS node env
pushd ${SCRIPTS_DIR}/record > /dev/null

./stop_record.bash

popd > /dev/null