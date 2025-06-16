#!/bin/bash

# Shell script that converts jpg file to png format

# Colors
YELLOW="\e[33m"
EXIT="\e[0m"


# Check packages

if dnf list installed "graphicsmagick" &>/dev/null;
then
	echo "Graphicsmagick package detected, continuing..."
else
	echo -e "Script requires ${YELLOW}graphicsmagick$EXIT package. Do you want to install it?\n" 
	read -n1 -p "Continue? y/n " key
	echo
	if [[ "$key" != "y" && "$key" != "Y" ]];
	then
		exit
	fi
	dnf install graphicsmagick -y
fi


# Check arguments

if [ $# -eq 0 ]
then
	 echo "Usage: $0 [File-1] [File-2] ... [File-n]"
	exit
fi


# Convert each file

for i in $@ 
do
	if [ ! -f "$i" ]; then
        echo "ERROR: '$i' is not a regular file."
        exit 1
    	fi
	
	filename="${i%.*}" 
	magick "$i" "$filename.png"
    
done

echo "[+] File conversion completed"


