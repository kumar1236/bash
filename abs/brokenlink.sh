#!/usr/bin/env bash

[ $# -eq 0 ] && directory=`pwd` || directory=$@


# Setup the
#+ for files
# If one of
#+ send that
#function linkchk to check the directory it is passed
#that are links and don't exist, then print them quoted.
#the elements in the directory is a subdirectory then
#subdirectory to the linkcheck function

linkchk(){

    for item in $1/*
    do
        [ -h $item -a ! -e $item ] && echo \"$item\"
        [ -d $item ] && linkchk $item
    done
}


for dir in $directory
do
    if [ -d $dir ]
    then
        linkchk $dir
    else
        echo "Not a directory"
        echo "Usage: $0 dir1 dir2 ..."
    fi
done