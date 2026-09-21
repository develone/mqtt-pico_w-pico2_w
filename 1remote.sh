#!/bin/bash

./build_cli.sh

rm -rf remote1  
 
mkdir remote1

cd remote1

cp ../exe-ocd.sh .

cmake -DPICO_BOARD=pico_w  -DHOSTNAME="remote1" -DWIFI_SSID="WIFI_SSID" -DWIFI_PASSWORD="WIFI_PASSWORD"  ..


make

cd ../

echo "Done"



