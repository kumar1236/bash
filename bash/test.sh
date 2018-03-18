#!/usr/bin/env bash
echo "Hello Bash"


count=8

echo ${count} #optionl
echo ${count}th #required if there is immediate code following

#Brace expansions

echo T{a,e,i,o,u}m

echo {a..g}
echo {A..G}
echo {1..5}

#cp data{,_bk}.txt  #cp data.txt data_bk.txt
#mv {,old-}code #mv code old-code


#Arthematic expansion

echo $[3 * 6]
echo $(( 3 * 6 ))

sum=$((3 + 5sddsd))
#echo $sum
((result=$? ? 10 : 34)) #Assigns 10 if true , if false assigns 34
#echo $sum
echo $result

#example
volt1=7
((bit1=volt1>3 ? 1:0 ))
echo "bit1=$bit1"
volt2=1
((bit2=volt2>3 ? 1:0 ))
echo "bit2=$bit2"

(( count++ ))
echo ${count}
(( count-- ))
echo ${count}


#Parameter Expansion

#Used to receive parameters passed to a script or a function in a script

opt=${1:-DEFAULT}
echo $opt
name=${1}
echo $name

name1=${1:-unknown}
echo $name1
