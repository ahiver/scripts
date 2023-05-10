#!/bin/bash

pushd ${SCRIPTS_DIR}/start/robot > /dev/null
sudo chmod +x *.bash
popd > /dev/null

pushd ${SCRIPTS_DIR}/services/robot > /dev/null
sudo chmod 664 *.service
sudo cp -rf *.service /etc/systemd/user
popd > /dev/null

sudo systemctl daemon-reload
systemctl --user enable ros.service
systemctl --user enable camera.service
systemctl --user enable mavros.service
