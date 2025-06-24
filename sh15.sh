#!/bin/bash
services="aws docker terraform"
for i in $services
do
	serviceStatus=sudo service $i status
	echo "service status---> $serviceStatus"
	sudo systemctl is-active --quiet "$i"
	if [ $? -eq 0 ]; then
		echo "$i is running"
	else echo "$i is stopped"
	fi
done
