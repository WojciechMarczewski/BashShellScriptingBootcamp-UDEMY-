#!/bin/bash


# Password generator

# My idea - iterate x times specified in the argument and 
# generate random int less than array of alphabet characters 
# and nubmers
if [[ -z "$1" ]]; then
	LENGTH=8
else
	LENGTH=$1
fi

chars=( {a..z} {A..Z} {0..9} )
PASS=""

for ((i=0; i< $LENGTH; i++))
	do
		RANDINT=$(($RANDOM % ${#chars[@]}))
		PASS+="${chars[$RANDINT]}"
	done
echo $PASS


# Idea from bootcamp:

PASS=`date | sha256sum | cut -b 1-$LENGTH`

echo "Password is: $PASS"

