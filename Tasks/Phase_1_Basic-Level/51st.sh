# 51. Define a function `check_file` that takes a filename as an argument and checks if it exists.

#!/bin/bash


check_file() {
    local filename="$1"

    if [ -e "$filename" ]; then
        echo "File '$filename' exists."
    else
        echo "File '$filename' does not exist."
    fi
}
