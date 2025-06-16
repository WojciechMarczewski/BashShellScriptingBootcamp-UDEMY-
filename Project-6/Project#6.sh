#!/bin/bash

# Colors

RED="\e[31m"
GREEN="\e[32m"
EXIT="\e[0m"
YELLOW="\e[33m"

# This script will install packages in system

if [ $UID -ne 0 ]
then 
	echo "Error: run the script as root user."
	exit
fi



PACKAGES=( figlet sl net-tools )

for i in ${PACKAGES[@]}
do
	if dnf list installed "$i" &>/dev/null; then
		echo -e "\n${YELLOW}[+] $i is already installed.${EXIT}"
	else
		echo -e  "\n${RED}[+] Installing $i...${EXIT}"
		#apt intall $i 
		dnf install $i -y  &>/dev/null
		echo -e "\n${GREEN}[+] Installation completed...${EXIT}"
	fi
	
done
echo

