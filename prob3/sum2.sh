#!/bin/bash
# sum all integers from $1 to $2 using a C-style for loop

start=$1
end=$2
sum=0

for (( i=start; i<=end; i++ )); do
    sum=$((sum + i))
done

echo $sum