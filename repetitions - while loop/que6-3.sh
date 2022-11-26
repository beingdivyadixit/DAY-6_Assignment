#!/bin/bash -x
random_check=$((RANDOM%2))
head=0
tail=0
while(($head<=11 || $tail<=11))
do
    if((head>=11))
      then
           echo "Head Win"
           break
    elif((tail>=11))
      then
           echo "Tail Win"
           break
    else
          if(($random_check==0))
            then
                 head=$((head+1))
          elif(($random_check==1))
            then
                 tail=$((tail+1))
          fi
    fi
done
