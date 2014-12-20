#!/bin/bash

function filter {
	echo "HI"	
}

function average {
	#FILECOUNT=0
	#TOTALFILESIZE=0
	#for file in $files; do
	#	FILESIZE=$(du "$file")
	#	(( FILECOUNT++ ))
	#	TOTALFILESIZE=$((TOTALFILESIZE + FILESIZE ))		
	#done
	#AVERAGE=($TOTALFILESIZE/$FILECOUNT)
	#echo $AVERAGE

	expr $(du -Ss | cut -f1) / $(find /path/to/dir -maxdepth 1 -type f | wc -l)

}

function main {
	files=$( ls $1 )
	average
}

main $1
