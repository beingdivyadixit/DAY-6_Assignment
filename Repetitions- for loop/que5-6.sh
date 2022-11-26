#!/bin/bash -x
echo "Enter the number to find prime factors"
read num
count=0
for((i=2; i<=num-1; i++))
do
  if(($num%i==0))
  then
       for((j=2; j<=i-1; j++))
        do
             if(($i%j==0))
               then
                   ((count++))
                fi
        done
        if(($count==0))
         then

             echo "$i is prime factor of $num"
         fi
    fi
done




