#!/bin/bash

dir[0]=$1 #array of directories visited

i=0 #current working index
d=1 #index to insert into the directory array

while [ $i -lt ${#dir[@]} ]; do #while the current index is less than the number of directories to explore
	for n in "${dir[i]}/"*; do #for files/directories in the current directory
		if [ -d "$n" ]; then #if the file is a directory
			dir[d]=$n; #add the directory to d
			(( d++ )) #increment the insertion index
		fi #end if
	done #end loop
	(( i++ )) #next index
done

echo "${dir[@]}" # echo all the directories
