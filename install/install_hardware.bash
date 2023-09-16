#!/bin/bash

# Update boot config

CONFIG_FILE_PATH=/boot/firmware/config.txt

# disable bluetooth it conflicts if gpio uart
echo "dtoverlay=disable-bt" | sudo tee -a $CONFIG_FILE_PATH

# Enable uart4
# PIN 08: GPIO14(TXD0, UART) yellow
# PIN 10: GPIO15 (RXD0, UART) green
echo "enable_uart4=1" | sudo tee -a $CONFIG_FILE_PATH

# Enable camera ov7251 overlay
echo "dtoverlay=ov7251" | sudo tee -a $CONFIG_FILE_PATH
