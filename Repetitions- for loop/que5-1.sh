#!/bin/bash -x
echo "Enter the number"
read num
power=1
for((i=1; i<=num; i++))
do
power=$((power*2))
echo "power: " $power
done
