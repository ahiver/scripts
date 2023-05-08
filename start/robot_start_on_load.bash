#!/bin/bash

pushd ${SCRIPTS_DIR}/start > /dev/null
sudo chmod 744 start_robot.bash
sudo chmod 664 robot.service
sudo cp -rf robot.service /etc/systemd/system
popd > /dev/null

sudo systemctl daemon-reload
sudo systemctl enable robot.service
