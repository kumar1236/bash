#!/usr/bin/env bash

#Script to give rpm description and info on can be installed or not

SUCCESS=0
E_NOARGS=45

if [ -n "$1" ]
then
    echo "Package provided: $1"
else
    echo "Should pass one package name"
    exit $E_NOARGS
fi



{
echo
echo "Package Information"
apt show $1 | head -3  # Shows some info about package
echo
echo "Package Listing"
apt list -a $1  #List all related packages and if already installed
apt-get -s install $1
if [ "$?" -eq $SUCCESS ]
then
    echo
    echo "$1 Can be installed"
else
    echo
    echo "$1 Cannot be installed"
fi
} > /tmp/$1.details

cat /tmp/$1.details

#Packages details on /tmp folder with extension details