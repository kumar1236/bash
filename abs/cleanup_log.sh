#!/usr/bin/env bash

#Cleanup Script


LOG_DIR=/tmp    # Logs directory
ROOT_UID=1000   # Only users with $UID 1000
LINES=500        # Default number of lines saved.
E_XCD=86        # Can't change directory?
E_NOTROOT=87    # Non-root exit error.


if [ "$UID" -ne "$ROOT_UID" ]
then
    echo "User must be \"Kumar\" to run this script"
    exit $E_NOTROOT
fi


if [ -n "$1" ]
then
    echo "Given no of lines to keep on log files are $1"
    Lines=$1
else
    Lines=$LINES # Adding default value as it is not passed to the script
fi

cd $LOG_DIR

if [ `pwd` != "$LOG_DIR" ]
then
    echo "Couldnt change to $LOG_DIR"
    exit $E_XCD
fi

echo "Current no of lines in log: `wc -l dpkg.log`"

tail -n $Lines dpkg.log > dpkg.log.tmp
mv dpkg.log.tmp dpkg.log

echo "No of lines after cleanup: `wc -l dpkg.log`"

exit 0