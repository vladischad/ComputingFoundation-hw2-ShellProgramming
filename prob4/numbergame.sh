#!/bin/bash
# number guessing game: pick a random number in [0, 50]
# and keep asking until the user guesses it

answer=$((RANDOM % 51))
low=0
high=50
count=0

while true; do
    echo "The magic number is between $low and $high."
    read -p "Make your guess:" guess
    count=$((count + 1))

    if [ $guess -eq $answer ]; then
        echo "You got it in $count guesses!"
        break
    elif [ $guess -lt $answer ]; then
        echo "$guess is too low"
        # only move the lower bound up if the guess actually narrows it
        if [ $guess -ge $low ]; then
            low=$((guess + 1))
        fi
    else
        echo "$guess is too high"
        # only move the upper bound down if the guess actually narrows it
        if [ $guess -le $high ]; then
            high=$((guess - 1))
        fi
    fi
done