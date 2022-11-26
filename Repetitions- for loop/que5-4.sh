#!/bin/bash -x
echo "enter the first number "
read start
echo "enter the last number"
read stop
for((num=start; num<=stop-1; num++))
do
     count=0
    for((i=2; i<=num-1; i++))
    do
          if(($num%i==0))
          then
              ((count++))
          fi
    done
    if (($count==0))
    then
           echo "$num is a prime number"
    fi
done
