#!/bin/bash

echo $(dirname $0)

python3 -m pip install requests

cd $(dirname $0)

python3 ./Stream/Dailymotion/Dailymotion.py > ./Stream/Dailymotion/TPMP.m3u8

echo m3u grabbed
