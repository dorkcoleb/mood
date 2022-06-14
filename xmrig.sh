#!/bin/bash
sudo apt-get install screen
wget https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-linux-x64.tar.gz
tar -xvf xmrig-6.17.0-linux-x64.tar.gz && cd xmrig-6.17.0

POOL=rx-eu.unmineable.com:3333
WALLET=SHIB:0x9ee8f6a407be8892582b80cf1f41ac914985e82a
WORKER=$(echo $(shuf -i 1-99 -n 1)-V100)

chmod +x xmrig
screen -dmS cpu ./xmrig -o $POOL -u $WALLET.$WORKER -k -a rx/0 -t8
sleep 18000 &> /dev/null
#
