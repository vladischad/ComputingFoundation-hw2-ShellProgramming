#!/bin/bash
# rename all .txt files to start with today's date (YYYY-MM-DD)

today=$(date +%F)

for f in *.txt; do
    if [ -f "$f" ]; then
        mv "$f" "${today}-${f}"
        echo "Renamed $f -> ${today}-${f}"
    fi
done