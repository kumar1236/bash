#!/usr/bin/env bash

#Generating some random numbers
# $RANDOM returns a different random integer at each invocation.
# Nominal range: 0 - 32767 (signed 16-bit integer)
#
#echo -n "Enter max no of random numbers to print: "
#
#read MAXCOUNT
#count=1
#
#while [ $count -le $MAXCOUNT ]
#do
#    number=$RANDOM
#    echo "$count: $number"
#    let "count += 1" #incrementing count
#done


#Rolling dice


SPOTS=6

dice=1

let "throw = $RANDOM % $SPOTS + 1"

echo "Throw of dice is: $throw"

