#!/bin/bash

lst=(1 2 3 4 5)
echo ${lst[@]}
num=0
for n in ${lst[@]}; do
	echo $n
	num=$((num + $n))
done

echo $num
