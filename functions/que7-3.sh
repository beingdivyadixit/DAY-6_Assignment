#!/bin/bash -x
echo "Enter the number to check number- is it Palindrome , Prime number"
read num
temp=$num
rev=0
rem=0
count=0
Check_prime()
{
while(($num>0))
do
   rem=$(($num%10))
   rev=$(($rev*10+$rem))
   num=$(($num/10))
done
if(($temp==$rev))
  then
       for((i=2;i<=rev-1;i++))
       do
            if(($rev%i==0))
             then
               ((count++))
              fi
        done
        if((count!=0))
         then
              echo "Number is palindrome but not a prime number"
         else
               echo "Number is palindrome and prime Number"
          fi
fi
}
Check_prime
