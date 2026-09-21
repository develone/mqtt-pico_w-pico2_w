#!/bin/bash

./build_cli.sh

rm -rf remote2  
 
mkdir remote2

cd remote2

cp ../exe-ocd.sh .

cmake -DPICO_BOARD=pico2_w  -DHOSTNAME="remote2" -DWIFI_SSID="WIFI_SSID" -DWIFI_PASSWORD="WIFI_PASSWORD"  ..


make

cd ../

echo "Done"



