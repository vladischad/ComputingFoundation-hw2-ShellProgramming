#!/bin/bash
# sum all integers from $1 to $2 using a while loop

i=$1
end=$2
sum=0

while [ $i -le $end ]; do
    sum=$((sum + i))
    i=$((i + 1))
done

echo $sum