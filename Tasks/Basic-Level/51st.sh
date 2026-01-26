#!/bin/bash


check_file() {
    local filename="$1"

    if [ -e "$filename" ]; then
        echo "File '$filename' exists."
    else
        echo "File '$filename' does not exist."
    fi
}
