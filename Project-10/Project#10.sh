#!/bin/bash


# Server Utilization

# Colors

RED="\e[1;31m"
GREEN="\e[1;32m"
EXIT="\e[0m"

div () {
	echo -e "\t\t\t${RED}==============================${EXIT}"
}

clear


echo -e "${GREEN}\t\t\t******************************"
echo -e "\t\t\t***** SERVER UTILIZATION *****"
echo -e "\t\t\t******************************${EXIT}"
echo 
div

echo -e "${RED}\t\t\t      `date '+%Y-%m-%d %H:%M:%S'`${EXIT}"
div

echo -e "${RED}\t\t\t         Uptime: `uptime | awk {'print $3'}`${EXIT}"
div


echo -e "${RED}\t\t\t     Currently logged users: ${EXIT}	"
echo

echo -e "`w -h -s`"
echo

div
echo -e "${RED}\t\t\t          Last logins${EXIT}"

echo
last -a | head -n 3
echo
div 

echo -e  "${RED}\t\t\t      Disk and Memory usage${EXIT}"
echo
df -h | xargs | awk '{print "Free/Total disk space:   " $11 "/" $9}'
free -m | xargs | awk '{print "Free/Total memory:       " $17 "/" $8 " MB"'}
echo
div
echo -e "${RED}\t\t\t     Utilization and most\n\t\t\t     expensive processes${EXIT}"

echo 

top -b | head -n 3

echo 

top -b | head -n 10 | tail -n 4	

echo
div
echo -e "${GREEN}\t\t\t              END${EXIT}"
