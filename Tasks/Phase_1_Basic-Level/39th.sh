# 39. Use an `if-else` statement to print whether a given number is positive or non-positive.

#!/bin/bash

read -p "Enter a number: " num

if [ "$num" -gt 0 ]; then
    echo "Number is positive"
else
    echo "Number is non-positive"
fi
