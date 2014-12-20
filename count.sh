#!/bin/bash

DIRECTORY="/usr/bin" #Directory to explore
cd $DIRECTORY #changes working directory to the Directory variable
array=$(ls) #Creates an array by listing all the files in the current working directory
echo ${#array[@]}
count=0 #sets the count variable to 0
currentPrefix="" #sets the current prefix to an empty string
for file in $array; do #loops over the file names in the array
	prefix=${file:0:1} #creates a variable from the first character of the file name
	if [ "$prefix" != "$currentPrefix" ]; then #checks to see if the file starts with a different character
		echo "$currentPrefix $count" #echos out the old file prefix and the current count
		currentPrefix=$prefix #changes the prefix
		count=0 #resets the count
	fi
	count=$((count+1)) #increments the count
done

echo "$currentPrefix $count" #echos the final prefix and count
