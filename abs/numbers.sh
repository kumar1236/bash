#!/usr/bin/env bash


#takes a file with multiple numbers and appends the numbers to a file that are not multiple with 5
#to a separate file and continues another loop to append multiple of 10 and finally with 5


E_NOARGS=45
FILE=$1

if [ -n "$1" ]
then
    echo "Provide file: $1"
else
    echo "Should passfile name"
    exit $E_NOARGS
fi

while read number
do
   rational=`expr $number % 5`
   if [ $rational != 0 ]
   then
       echo "$number Failed to divide by 5"
       echo $number >> /tmp/notdividedby5.txt
       continue
   else
       echo "$number is successful by 5"
       rational1=`expr $number % 10`
       if [ $rational1 != 0 ]
       then
            echo "$number Failed to divide by 10"
            echo $number >> /tmp/notdividedby10.txt
            continue
       else
            echo "$number is successful by 10"
       fi
   fi
done < $FILE