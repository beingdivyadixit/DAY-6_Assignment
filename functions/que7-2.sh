#!/bin/bash -x
echo "Enter the first number"
read num1
echo "Enter the second number"
read num2
rev1=0
rev2=0
temp1=$num1
temp2=$num2
function checkPalindrome()
{
while(($num1>0 && $num2>0))
do
rem1=$(($num1%10))
rev1=$(($rev1*10+$rem1))
num1=$(($num1/10))
rem2=$(($num2%10))
rev2=$(($rev2*10+$rem2))
num2=$(($num2/10))
done
if(($temp1==$rev1&&$temp2==$rev2))
then
  echo "$rev1 & $rev2 is a palindrome number"
elif(($temp1==$rev1&&$temp2!=$rev2))
then
  echo "$rev1 is a palindrome number but $rev2 is not a palindrome number"
elif(($temp1!=$rev1&&$temp2==$rev2))
then
   echo "$rev1 is not a palindrome number but $rev2 is a palindrome number"
else
    echo "both $rev1 & $rev2 is not a palindrome number"
fi
}
checkPalindrome
