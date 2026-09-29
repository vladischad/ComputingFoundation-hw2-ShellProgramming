#!/bin/bash
# run "bash sum4.sh" and report whether it succeeded based on its exit status

bash sum4.sh

if [ $? -eq 0 ]; then
    echo "Attn: Command succeeded"
    exit 0
else
    echo "Attn: Command failed"
    exit 1
fi