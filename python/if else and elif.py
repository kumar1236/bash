# !/usr/bin/python3
#
# name=input("What is your name? \n")
# age=int(input("What is your age {0} ? \n".format(name)))
# print(age)
#
# if age >= 18:
#    print("Your are old enough to Vote")
# else:
#    print("You can come back after {0} years".format(18 - age))

# print("please guess a number from 1 to 10")
# guess = int(input())
#
#
# if guess < 5:
#     print("Please guess higher")
#     guess = int(input())
#     if guess == 5:
#         print("You guessed it correctly!")
#     else:
#         print("Your guess is wrong!")
#
# elif guess > 5:
#     print("Please guess is lower")
#     guess = int(input())
#     if guess == 5:
#         print("You guessed it correctly!")
#     else:
#         print("Your guess is wrong!")
# else:
#     print("Your guessed it in first chance")



age=int(input("How old are you?"))

if not(age < 18):
    print("You are old enough to vote")
else:
    print("come back after {0} year".format(18-age))









