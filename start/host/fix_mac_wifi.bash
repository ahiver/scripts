#!/bin/bash

# MacBook only

# ip a

# echo Make sure that wifi link is wlp2s0

# This is need for Ubuntu on Macbook 
# iwconfig wlp2s0 txpower 10dBm

#!/bin/sh
sleep 5
iwconfig wlp2s0 txpower 10dBm
exit 0