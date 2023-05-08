#!/bin/bash

pushd ${SCRIPTS_DIR}/start > /dev/null
sudo chmod 744 start_host.bash
sudo chmod 664 host.service
sudo cp -rf host.service /etc/systemd/system
popd > /dev/null

sudo systemctl daemon-reload
sudo systemctl enable host.service