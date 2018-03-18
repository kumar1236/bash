#!/usr/bin/python3

import subprocess


def pyfunc():
    print("Hello Function!!")
    print("###############################")


def unamefunc():
    Uname = "uname"
    Unamearg = "-a"
    print("Gathering system Information! \n")
    subprocess.call([Uname, Unamearg])
    print("###############################")


def diskfunc():
    Disk = "df"
    Diskarg = "-h"
    print("Gathering disk Information! \n")
    subprocess.call([Disk, Diskarg])
    print("###############################")


def main():
    pyfunc()
    unamefunc()
    diskfunc()

#main()
if __name__ == "__main__":
    main()
