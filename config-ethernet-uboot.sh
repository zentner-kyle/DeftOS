#!/bin/bash -xe
INTERFACE=$(ip link list | grep 'enp[^:]*' -o | head -n 1)
ADDRESS=192.168.2.80/24
echo "Configuring interface $INTERFACE"
sudo ifconfig $INTERFACE down
sudo ifconfig $INTERFACE $ADDRESS up
