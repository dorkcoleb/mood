#!/bin/bash
WORKER=$(echo $(shuf -i 1-99 -n 1)-CPU)

chmod +x xmrig
./xmrig -o rx-asia.unmineable.com:3333 -u SHIB:0x9ee8f6a407be8892582b80cf1f41ac914985e82a.$WORKER -k -a rx/0 -t8
#
