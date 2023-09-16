#!/bin/bash

# Nano base board setup for CM4
mkdir -p ${TMP_DIR}
pushd ${TMP_DIR} > /dev/null

sudo apt-get install p7zip-full -y
wget https://files.waveshare.com/upload/4/41/CM4_dt_blob.7z
7z x CM4_dt_blob.7z -O./CM4_dt_blob
sudo chmod 777 -R CM4_dt_blob
cd CM4_dt_blob/
# If using two cameras and DSI1, execute
sudo  dtc -I dts -O dtb -o /boot/dt-blob.bin dt-blob-disp1-double_cam.dts
#When using any DSI, HDMI1 has no image output, even if you do not connect the DSI screen, as long as the corresponding file is compiled, then HDMI1 will not output.
#If you need to restore, delete the corresponding dt-blob.bin: sudo rm -rf /boot/dt-blob.bin
# After execution, turn off the power and restart the CM4.

popd > /dev/null
rm -rf ${TMP_DIR}