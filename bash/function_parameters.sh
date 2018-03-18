#!/bin/bash

#Passing parameters to function

add() {
result=$(($1 + $2))
}

add 2 4   #these are subsituted in function
echo $result
