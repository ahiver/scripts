#!/bin/bash

roscore
pushd ${SCRIPTS_DIR} > /dev/null
./start/start_host.bash
popd > /dev/null
