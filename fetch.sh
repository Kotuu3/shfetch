#!/bin/bash

computer_name=$HOSTNAME
echo "| HostName: $computer_name"

System="$(uname -s)"
Release="$(uname -r)"
echo "| OS: $System $Release"

echo "| CPU: $(grep 'model name' /proc/cpuinfo | head -n 1 | cut -d ':' -f 2 | tr -s ' ')"

total_memory=$(free -h | awk '/Mem/{print $2}')
used_memory=$(free -h | awk '/Mem/{print $3}')

echo "| Memory: $used_memory / $total_memory"

echo "| Shell: $SHELL"

echo "| Uptime: $(uptime -p)"

reset='\e[0m'
red='\e[31m'
green='\e[32m'
yellow='\e[33m'
blue='\e[34m'

echo -e "| ${reset}${red}${reset}  ${green}${reset}  ${yellow}${reset}  ${blue}${reset}"
