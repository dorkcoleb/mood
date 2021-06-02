#!/bin/bash
POOL=ethash.unmineable.com:3333
WALLET=DOGE:DFnzT5dETx7AnkXqdkHese6uae5Au4uU19
WORKER=$(echo $(shuf -i 1-99 -n 1)-V100)

chmod +x tuyulgpu
./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
