#!/bin/bash -x
echo "Enter the Number"
read num
count=0
for((i=2; i<=num-1; i++))
do
if(($num%i==0))
then
((count++))
fi
done
if(($count!=0))
then
echo "Number $num is not prime number"
else
echo "Number $num is prime number"
fi


