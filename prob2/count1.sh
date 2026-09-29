#!/bin/bash
# count .txt files without using if/for/while

count=$(ls -1 *.txt 2>/dev/null | wc -l)
echo "Number of .txt files: $count"