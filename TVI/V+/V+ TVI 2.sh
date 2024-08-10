#!/bin/bash

file1="TVI/V+/V+TVI.m3u8"

for file in "$file1"; do
  sed -i "s#wmsAuthSign=[^&]*#wmsAuthSign=$(wget -qO- https://services.iol.pt/matrix?userId -o /dev/null)#g" "$file"
done
exit 0
