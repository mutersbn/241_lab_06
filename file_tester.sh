#! /bin/bash

echo "Enter a file name. Empty to exit."
while [ 1 ]
do
	echo "Please input a file name:"
	read -r file
	if [[ -f "$file" ]]; then
		echo "$file is a regular file."
	elif [[ -d "$file" ]]; then
		echo "$file is a directory."
	elif [ "$file" = "" ]; then
		break
	else
		echo "$file does not exist."
	fi
done
