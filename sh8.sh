#!/bin/bash
eligibleAge=18
if [ $1 -gt $eligibleAge ]
then
	echo "he/she is eligible for election-voting"
else
	echo "he/she isn't eligible for election-voting"
fi
