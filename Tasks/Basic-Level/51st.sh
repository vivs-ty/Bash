#!/bin/bash

# Definition
check_file() {
    if [ -f "$1" ]; then
        echo "File '$1' exists."
    else
        echo "File '$1' does not exist."
    fi
}

# Call the function
check_file "my_file.txt"