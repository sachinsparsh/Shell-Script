#shell script to find the files with 777 permission
#!/bin/bash

echo "Enter the directory path to search:"
read dir

if [ ! -d "$dir" ]; then
    echo "❌ Directory does not exist."
    exit 1
fi

echo "🔍 Searching for files with 777 permissions in $dir ..."
find "$dir" -type f -perm 0777
