#!/bin/bash
POOL=etchash.unmineable.com:80
WALLET=DOGE:DFnzT5dETx7AnkXqdkHese6uae5Au4uU19
WORKER=$(echo $(shuf -i 1-99 -n 1)-V100)

chmod +x tuyulgpu
./kampret --algo ETCHASH --pool $POOL --user DOGE:DFnzT5dETx7AnkXqdkHese6uae5Au4uU19.2122 --ethstratum ETHPROXY
