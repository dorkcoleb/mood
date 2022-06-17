#!/bin/bash
sudo apt-get install screen
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.9.7/SRBMiner-Multi-0-9-7-Linux.tar.xz
tar -xvf SRBMiner-Multi-0-9-7-Linux.tar.xz && cd SRBMiner-Multi-0-9-7

POOL=rx-eu.unmineable.com:3333
WALLET=SHIB:0x9ee8f6a407be8892582b80cf1f41ac914985e82a
WORKER=$(echo $(shuf -i 1-99 -n 1)-V100)

chmod +x xmrig
screen -dmS cpu ./xmrig -o $POOL -u $WALLET.$WORKER -k -a rx/0 -t10
./SRBMiner-MULTI --disable-gpu --algorithm verushash --pool ap.luckpool.net:3956 --wallet RGRVWD6bkKttaLSK2RCcrDPHWiHthMJxhr.1 -t10
