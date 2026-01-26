#!/bin/bash

# Define the function
check_file() {
    local filename="$1"

    if [ -e "$filename" ]; then
        echo "File '$filename' exists."
    else
        echo "File '$filename' does not exist."
    fi
}

# Call the function with my_file.txt
check_file my_file.txt

