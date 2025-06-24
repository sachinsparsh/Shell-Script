#!/bin/bash
# Script to check disk storage usage of the root (/) partition

# Get the disk usage percentage of root, removing the '%' symbol
space=$(df -P / | awk 'NR==2 {gsub(/%/,"",$6); print $6}')

# Check if the disk usage is greater than or equal to 80%
if [ "$space" -ge 80 ]; then
    echo "Disk usage is high: $space%. Please take action."
else
    echo "Disk usage is under control: $space%"
fi

