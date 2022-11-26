#!/bin/bash -x
start=100
while(($start>0 && $start<200))
do
      Win_Check=$((RANDOM%2))
      if(($Win_Check==0))
        then
              echo "Win"
              start=$(($start+2))
       elif(($Win_Check==1))
          then
                echo "Loss"
                start=$(($start-1))
        fi
done


