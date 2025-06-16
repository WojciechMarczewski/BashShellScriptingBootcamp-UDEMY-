#!/bin/bash

# Script that gathers information about user and saves it to CSV

read -p "[+] Enter your name: " NAME
read -p "[+] Enter your employee ID: " ID
read -p "[+] Enter your department: " DEPT
read -p "[+] Enter your gender: " GENDER
INFO=$NAME,$ID,$DEPT,$GENDER


read -p "Do you have given the correct information? [y/n]" INPUT

case "$INPUT" in 
	n | N )
	exit
	;;
	y | Y )
	echo $INFO >> employee_data.csv
	;;
	* ) 
	exit
	;;
esac

echo "Your data has been stored"

 
