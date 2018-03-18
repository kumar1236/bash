##!/usr/bin/env bash
#
#file="/tmp/eid"
#
#while read eid;
#do
#ls -1 ${eid} > /dev/null 2>&1
#if [ $? -ne 0 ]; then
#echo ${eid} > /tmp/failedfolder.txt
#continue
#fi
#echo "success full for ${eid}"
#done < ${file}


################################3



#!/bin/bash

LIMIT=19  # Upper limit

echo
echo "Printing Numbers 1 through 20 (but not 3 and 11)."

a=0

while [ $a -le "$LIMIT" ]
do
 a=$(($a+1))

 if [ "$a" -eq 3 ] || [ "$a" -eq 11 ]  # Excludes 3 and 11.
 then
   continue      # Skip rest of this particular loop iteration.
 fi

 echo -n "$a "   # This will not execute for 3 and 11.
done

# Exercise:
# Why does the loop print up to 20?
