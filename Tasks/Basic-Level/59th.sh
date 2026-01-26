#!/bin/bash

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <num1> <num2>"
    exit 1
fi

num1="$1"
num2="$2"

# Calculate and print the sum
sum=$((num1 + num2))

echo "Sum: $sum"
