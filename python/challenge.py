#!/usr/bin/python3


ip = input("Enter the ip address: \n")
segment = 1
length = 0
character = ""

for character in ip:
    if character == ".":
        print("segment {} contains {} numbers".format(segment, length))
        segment += 1
        length = 0
    else:
        length += 1

if character != ".":
    print("segment {} contains {} numbers".format(segment, length))
