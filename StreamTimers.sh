#!/bin/bash
currentTime=`zdump EST`
currentTime=`expr "$currentTime" : 'EST \(.*\)2014 EST'`
echo $currentTime > ~/Documents/Programming/BASH/currentTime.txt
