#shell script to check if given pattern is present or not
#!/bin/bash

echo "Enter the filename:"
read file_name

# Check if file exists
if [ ! -f "$file_name" ]; then
    echo "❌ File '$file_name' does not exist."
    exit 1
fi

echo "Enter the pattern to search:"
read pattern

# Search for the pattern
if grep -q "$pattern" "$file_name"; then
    echo "✅ Pattern '$pattern' found in '$file_name'."
else
    echo "❌ Pattern '$pattern' NOT found in '$file_name'."
fi
