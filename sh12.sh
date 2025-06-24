#script to remove a file
#!/bin/bash
echo "enter a file name which you would like to remove"
read file_name
if [ -f $file_name ]; then
	rm $file_name
	echo "$file_name file removed successfully"
else
	echo "$file_name file doesn't exist"
fi
