#!/bin/bash

file="data.txt"

if [ -r "$file" ]; then
    echo "$file is readable."
else
    echo "$file is not readable."
fi
