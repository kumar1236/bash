#!/bin/bash

#Reading 2 integers and performing arthematic operations
clear

while (true)
do
echo -e "Choose from the below arthematic operations \n"
echo -e "[a]addition \n[b]substraction \n[c]multiplication \n[d]division \n"
read -p "Your choice: " choice

case $choice in
[aA])
     read -p "Enter your first integer: " int1
     read -p "Enter your second integer: " int2
     echo -e "Your choice is Addition \n"
     result=$((int1+int2))
;;
[bB])
     read -p "Enter your first integer: " int1
     read -p "Enter your second integer: " int2
     echo -e "Your choice is Substraction \n"
     result=$((int1-int2))
;;
[cC])
     read -p "Enter your first integer: " int1
     read -p "Enter your second integer: " int2
     echo -e "Your choice is Multiplication \n"
     result=$((int1*int2))
;;
[dD])
     read -p "Enter your first integer: " int1
     read -p "Enter your second integer: " int2
     echo -e "Your choice is Division \n"
     result=$((int1/int2))
;;
*)
   result=0
   echo "Wrong Choice"
   esac

echo "Your Result is: $result"
read -p "Do you want to continue [y]yes or [n]no: " ans
if [ $ans == 'n' ]
then
    echo "Ok, existing the script"
    break
else
    continue
fi
done
