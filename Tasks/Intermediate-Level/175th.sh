# 175. Use `netstat` (or `ss`) to list all listening ports on a server.

#!/bin/bash

echo "Retrieving all actively listening ports on this server..."
echo "--------------------------------------------------------"

if command -v ss &> /dev/null; then
    # ss is the modern, faster replacement for netstat
    ss -tuln
elif command -v netstat &> /dev/null; then
    netstat -tuln
else
    echo "Error: Neither 'netstat' nor 'ss' is available on this system."
    exit 1
fi
