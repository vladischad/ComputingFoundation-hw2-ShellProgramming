#!/bin/bash
# check if readme.txt exists and if I can write to it

FILE="/home/myname/CS507/HW2/readme.txt"
# FILE="/c/Users/vladm/Desktop/CS507 - Computing Foundations/ComputingFoundation-hw2-ShellProgramming/prob1/readme.txt"

if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE does not exist."
    exit 1
fi

if [ -w "$FILE" ]; then
    echo "I have write permission on $FILE."
else
    echo "I do NOT have write permission on $FILE."
fi