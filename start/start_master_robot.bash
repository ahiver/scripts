#!/bin/bash

roscore
pushd ${SCRIPTS_DIR} > /dev/null
./start/start_robot.bash
popd > /dev/null
