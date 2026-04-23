# 176. Use `netstat` (or `ss`) to find the process using a specific port.

#!/bin/bash

echo "Enter the port number to check:"
read port
if command -v netstat &> /dev/null; then
    netstat -tuln | grep ":$port " | awk '{print $7}' | cut -d'/' -f1
elif command -v ss &> /dev/null; then
    ss -tuln | grep ":$port " | awk '{print $6}' | cut -d',' -f2
else
    echo "Neither netstat nor ss is available on this system."
    exit 1
fi
