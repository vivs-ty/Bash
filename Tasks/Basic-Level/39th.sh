#!/bin/bash

read -p "Enter a number: " num

if [ "$num" -gt 0 ]; then
    echo "Number is positive"
else
    echo "Number is non-positive"
fi
