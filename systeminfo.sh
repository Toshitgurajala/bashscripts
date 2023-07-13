#!/bin/bash

echo
systeminfo=$(uname -a) 
echo "System Information: $systeminfo"
echo 
echo

while true 
do

currentime=$(date +'%d/%m/%Y %H:%M:%S')
echo -e "\r\033[1A\033[0KCurrent Time: $currentime"

 read -n 1 -t 1 key 

    if [[ $key ]]; then
        break
    fi



done
