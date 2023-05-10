#!/bin/bash

pushd ${SCRIPTS_DIR}/start/host > /dev/null
sudo chmod +x *.bash
popd > /dev/null

pushd ${SCRIPTS_DIR}/services/host > /dev/null
sudo chmod 664 *.service
sudo cp -rf mac_wifi.service /etc/systemd/system
sudo cp -rf ros.service /etc/systemd/user
popd > /dev/null

sudo systemctl daemon-reload
# Comment out if you need not this fix for macbook
sudo systemctl enable mac_wifi.service
# start ROS
systemctl --user enable ros.service

