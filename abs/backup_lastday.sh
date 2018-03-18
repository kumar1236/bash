#!/usr/bin/env bash

#Script for creating backup of all files modified in last 24 hours


BACKUPFILE=backup
LOG_DIR=/tmp
E_XCD=65

archive=${1:-$BACKUPFILE}-$(date +%d-%m-%y) #if no argument is passed, it uses default value

echo $archive

cd $LOG_DIR

if [ `pwd` != "$LOG_DIR" ]
then
    echo "Couldnt change to $LOG_DIR"
    exit $E_XCD
fi

tar cvf $archive.tar `find . -mtime -1 -type f -print 2> /dev/null`

if [ "$?" -eq 0 ]
then
    echo "Successfully Archived...: $archive.tar"
else
    echo "not able to create Archive..."
fi

