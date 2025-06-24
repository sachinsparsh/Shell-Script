#!/bin/bash
echo "enter directory name"
read dir
if [ -d $dir ]; then
	echo "$dir directory exists"
else
	echo "$dir directory doesn't exist"
	echo "creating new directoy with the name $dir"
	mkdir $dir
	echo "$dir is successfully created"
fi
