#!/bin/bash
services="aws docker terraform"
for i in $services
do
	if systemctl is-active --quiet "$service"; then
    echo "$service is running"
else
    echo "$service is NOT running"
fi
done
