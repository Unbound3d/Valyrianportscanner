#!/bin/bash

# Define the banner as a multi-line string
banner="
  ____                                       _ 
 |  _ \ _ __ __ _  ___ __ _ _ __ _   _ ___  | |
 | | | | '__/ _` |/ __/ _` | '__| | | / __| | |
 | |_| | | | (_| | (_| (_| | |  | |_| \__ \ |_|
 |____/|_|  \__,_|\___\__,_|_|   \__, |___/ (_)
                                 |___/ ValyrianPortScanner
                                              by
                                                Unbound3d!
"


# Clear the screen before printing the banner
clear

# Print the banner
echo "$banner"

if [ "$1" == "" ]; then
  echo "Usage: ./port.sh [IP]"
  echo "Example: ./port.sh 192.168.1.10"
else
  echo "Ravens are on the wing, searching for open ports..."
  sudo nmap -T4 --min-rate 65535 -p- $1 | grep "open"
fi