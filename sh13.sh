#script to check if the entered number is even or odd
#!/bin/bash
echo "enter a number"
read n
if (( $n % 2 == 0 )); then
	echo "$n is an even number"
else
	echo "$n is an odd number"
fi
