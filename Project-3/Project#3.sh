#!/bin/bash


# Digital Clock


# My idea - sleep for half a second and print date on the same line every time


while true; do
	echo -ne "\r $( date '+%d/%m/%Y%t%H:%M:%S' )"
	sleep 0.5

done

# Bootcamp solution

while true
do
	clear
	date +%H:%M:%S
	sleep 1
done





