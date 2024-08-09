#!/bin/bash

cd M3U

# V+ TVI - update the stream URL of V+ TVI

sed -i "/live_vmais\/live_vmais/ c https://video-auth7.iol.pt/live_vmais/live_vmais/playlist.m3u8?wmsAuthSign=$(wget https://services.iol.pt/matrix?userId= -o /dev/null -O -)/" V+_TVI.m3u
