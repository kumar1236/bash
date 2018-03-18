#!/usr/bin/python


name=input("Please enter your name: \n")
age=int(input("Please enter your age: \n"))

if (age < 18) or (age > 30):
    print("You are not eligible for Holiday's {}".format(name))
else:
    print("Welcome to Holiday's {}".format(name))


