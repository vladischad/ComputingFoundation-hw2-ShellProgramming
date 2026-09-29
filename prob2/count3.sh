#!/bin/bash
# print every file in the current directory and the total count

count=0
for f in *; do
    if [ -f "$f" ]; then
        echo "$f"
        count=$((count + 1))
    fi
done

echo "Total number of files: $count"