#!/bin/bash
procid=`pidof  top`
arr=$(echo $procid | tr " " "\n")
for x in $arr
do
cpulimit -b -p $x -l 20 &
done
