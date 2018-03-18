#!/usr/bin/python3


#for i in range(1,10):
#    print("i is now {}".format(i))

# i=0
#
# while (i < 10):
#     print("i is now {}".format(i))
#     i += 1


# available_routes = ("east", "west", "north", "south")
# route = input("Please choose your route? \n")
# while route != "east":
#     print("{}!! is not correct, choose again \n".format(route))
#     route = input("Please choose your route? \n")
#
# print("{}!! is correct, Get the hell out of here!! \n".format(route))


#######Guess Number Game########

# import random
#
# highest = 10
# answer= random.randint(1, highest)
#
# print("answer is {}".format(answer))
#
# guessnumber=int(input("Please guess a number between 1 and 10 \n"))
#
# if guessnumber != answer:
#     if guessnumber < answer:
#         print("You should guess little higher number \n")
#     else:
#         print("You should guess little lower number \n")
#     guessnumber = int(input("Please guess a number between 1 and 10 \n"))
#     if guessnumber == answer:
#         print("You guessed it correctly \n")
# else:
#     print("You guessed it in first attempt, you won!!! \n")




import random

highest = 10
answer= random.randint(1, highest)

print("answer is {}".format(answer))
guessnumber = 0

#guessnumber=int(input("Please guess a number between 1 and 10 \n"))

while guessnumber != answer:
    guessnumber = int(input("Please guess a number between 1 and 10 \n"))
    if guessnumber < answer:
        print("You should guess little higher number \n")
    else:
        print("You should guess little lower number \n")
    #guessnumber = int(input("Please guess a number between 1 and 10 \n"))
    if guessnumber == answer:
        print("You guessed it correctly \n")
if guessnumber == answer:
    print("You guessed it in first attempt, you won!!! \n")



















