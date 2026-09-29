#!/bin/bash
# add up all command line arguments using a for loop

sum=0
for num in "$@"; do
    sum=$((sum + num))
done

echo $sum