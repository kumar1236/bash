#!/usr/bin/python3


import sys

# Defining function
def moon():
    print(sys.argv)
    print(sys.argv[0])
    print(sys.argv[1])

#Standard that calls function
if __name__ == "__main__":
    moon()
