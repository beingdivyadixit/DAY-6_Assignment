#!/bin/bash -x
echo "Enter the number"
read num
i=1
power=1
while((i<=$num))
do
power=$(($power*2))
echo $power
i=$((i+1))
done
