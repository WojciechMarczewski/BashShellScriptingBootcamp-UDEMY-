#!/bin/bash

# Script prints user-friendly file information.

if [ $# -eq 0 ]
then 
	echo "Usage: $0 [FileName]"
	exit 1
fi


OWNER=`ls -la $1 | awk {'print $3'}`
SIZE=`ls -la $1 | awk {'print $5'}`
MONTH=`ls -la $1 | awk {'print $6'}`
DAY=`ls -la $1 | awk {'print $7'}`
TIME=`ls -la $1 | awk {'print $8'}`

echo "File name: $1"

echo

echo "Owner: $OWNER"

echo "Size: $SIZE bytes"

echo "Created date: $MONTH $DAY at $TIME"

echo "File type: `file $1`"

echo

echo "PERMISSIONS: "

if [ -r $1 ]
then 
	echo "READABLE=true"
else
	echo "READABLE=false"
fi

if [ -w $1 ]
then
	echo "WRITEABLE=true"
else
	echo "WRITEABLE=false"
fi

if [ -x $1 ]
then 
	echo "EXECUTABLE=true"
else
	echo "EXECUTABLE=false"
fi




