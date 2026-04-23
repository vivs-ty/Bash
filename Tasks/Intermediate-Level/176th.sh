# 176. Use `netstat` (or `ss`) to find the process using a specific port.

#!/bin/bash

read -r -p "Enter the port number to investigate: " port

echo "Checking for processes running on port $port..."
echo "Note: This requires sudo privileges to view process ownership."

if command -v ss &> /dev/null; then
    # -p flag shows the process, which requires root privileges
    sudo ss -tulnp | grep -w ":$port"
elif command -v netstat &> /dev/null; then
    sudo netstat -tulnp | grep -w ":$port"
else
    echo "Error: Neither 'netstat' nor 'ss' is available on this system."
    exit 1
fi
