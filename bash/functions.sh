#!/bin/bash

inputs (){
     read -p "Enter your first integer: " int1
     read -p "Enter your second integer: " int2
}

exitprompt(){
read -p "Do you want to continue [y]yes or [n]no: " ans
if [ $ans == 'n' ]
then
    echo -e "Ok, existing the script \n"
    break
elif [ $ans == 'y' ]
then
    echo -e "   "
    echo -e "Ok, Happy to help, please continue \n"
    echo -e "################################## \n"
    continue
else
    echo -e "Wrong Choice \n"
    break
fi
}

#Reading 2 integers and performing arthematic operations
clear

while (true)
do
echo -e "Choose from the below arthematic operations \n"
echo -e "[a]addition \n[b]substraction \n[c]multiplication \n[d]division \n"
read -p "Your choice: " choice

case $choice in
[aA])
     inputs
     echo -e "Your choice is Addition \n"
     result=$((int1+int2))
;;
[bB])
     inputs
     echo -e "Your choice is Substraction \n"
     result=$((int1-int2))
;;
[cC])
     inputs
     echo -e "Your choice is Multiplication \n"
     result=$((int1*int2))
;;
[dD])
     inputs
     echo -e "Your choice is Division \n"
     result=$((int1/int2))
;;
*)
   result=0
   echo "Wrong Choice"
   esac

echo "Your Result is: $result"
exitprompt

done

