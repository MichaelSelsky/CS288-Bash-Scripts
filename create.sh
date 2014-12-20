#!/bin/bash

if [[ $4 == "depth" ]]; then
    depth=$1
    breadth=$2
else
    depth=$2
    breadth=$1
fi

i=0

directory[i]=$3


for b in `seq 1 $breadth`; do
    for dir in ${directory[@]}; do
      for d in `seq 1 $depth`; do
        temp=$dir/$b
        if [[ -d "$temp" ]]; then #if temp is a directory
          continue
        fi
        (( i++ ))
        mkdir $temp
        echo "$temp"
        directory[$i]=$temp
      done
    done
done
