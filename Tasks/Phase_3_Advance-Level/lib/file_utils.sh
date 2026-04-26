#!/bin/bash
# Library: File Operations

file_exists() {
    if [ -f "$1" ] && [ -r "$1" ]; then
        return 0
    else
        return 1
    fi
}

file_size() {
    if file_exists "$1"; then
        wc -c < "$1" | xargs
    else
        echo "0"
    fi
}
