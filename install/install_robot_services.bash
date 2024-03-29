#!/bin/bash

pushd ${SCRIPTS_DIR}/start/robot > /dev/null
sudo chmod +x *.bash
popd > /dev/null

pushd ${SCRIPTS_DIR}/services/robot > /dev/null
sudo chmod 664 *.service
sudo cp -rf *.service /etc/systemd/system
popd > /dev/null

sudo systemctl daemon-reload
sudo systemctl enable mavproxy2.service
sudo systemctl enable ros.service
sudo systemctl enable camera.service
sudo systemctl enable mavros.service
sudo systemctl enable post_setup.service
sudo systemctl enable mavlink_router.service
# sudo systemctl enable gps.service
sudo systemctl enable record2.service

