#check if the entered name is a file or directory

#!/bin/bash
echo "enter a name to check if it's a file or directory"
read name
if [ -f "$name" ]; then
	echo "$name is a file"
elif [ -d "$name" ]; then
	echo "$name is a directory"
else
	echo "file or directory doesn't exist with the name: $name"
fi
