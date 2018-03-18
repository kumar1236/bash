#!/usr/bin/env bash

# Reading lines in /tmp/fstab.
File=/tmp/fstab
{
read line1
read line2
} < $File
echo "First line in $File is:"
echo "$line1"
echo "Second line in $File is:"
echo "$line2"
exit 0