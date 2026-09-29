#!/bin/bash
# count .txt files using a for loop

count=0
for f in *.txt; do
    if [ -f "$f" ]; then
        count=$((count + 1))
    fi
done

echo "Number of .txt files: $count"