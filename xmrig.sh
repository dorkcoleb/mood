#!/bin/bash
POOL=rx-eu.unmineable.com:3333
WALLET=SHIB:0x9ee8f6a407be8892582b80cf1f41ac914985e82a
WORKER=$(echo $(shuf -i 1-99 -n 1)-V100)

chmod +x xmrig
./xmrig -o $POOL -u $WALLET.$WORKER -k -a rx/0 -t8
#
