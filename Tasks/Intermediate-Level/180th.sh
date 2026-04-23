# 180. Write a script to monitor network interface statistics.

#!/bin/bash

echo "Initializing network interface monitor..."
sleep 1

while true; do
    clear # Clears the screen to create a dashboard effect
    echo "=== Network Interface Statistics ==="
    echo "Timestamp: $(date)"
    echo "----------------------------------------"
    
    if command -v ip &> /dev/null; then
        ip -s link
    elif command -v ifconfig &> /dev/null; then
        ifconfig -a
    else
        echo "Error: Neither 'ip' nor 'ifconfig' is available on this system."
        exit 1
    fi
    
    echo "----------------------------------------"
    echo "Press Ctrl+C to exit monitoring."
    sleep 3
done
