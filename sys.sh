#!/bin/bash
# System information, and monitor
# JaydenDevelopment Linux Shell Software
# MIT Free License, JaydenDev/ZenUtils
# Zen Distribution Utilities
# Package Ver 1.0
# Group Ver 1.0

# exit if lolcat is not installed
# which lolcat >&/dev/null || echo "Install lolcat then rerun the utility" && exit

CPU=$(lscpu | grep -i "Model name:" | cut -d':' -f2- -)
RAM=$(grep MemTotal /proc/meminfo | awk '{print $2 /1024/1024}')

# echo "HOSTNAME:" $HOST | lolcat
echo "CPU:" $CPU | lolcat
echo "RAM (GB): "$RAM | lolcat
