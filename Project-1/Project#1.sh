#!/bin/bash

# Generate random quote every time the script executes


# My first idea about assigning lines to array not working as expected, it saves all text into first array element
 LINES=$(cat Quotes) 

# Easiest way to write each line of file to array
mapfile -t LINES < Quotes


# My first idea about  calculating array length based on line count in the Quotes file:
LENGTH=$(wc -l < Quotes)

# Array Length expression recommended 
LENGTH=${#LINES[@]} 

# Random int. Arrays are zero-based, but '%' give N-1 
RAND=$[$RANDOM % $LENGTH]


#echo ${LINES[RAND]}

# Add random color to output
COLOR=$(( RANDOM % 8 ))
# Add +1 to exclude black color
COLOR=$(( COLOR +1 ))


echo -e "\e[3${COLOR}m${LINES[$RAND]}\e[0m"



