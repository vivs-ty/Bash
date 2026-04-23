# 180. Write a script to monitor network interface statistics.

#!/bin/bash

echo "Monitoring network interface statistics..."
while true; do
    echo "Timestamp: $(date)"
    if command -v ifconfig &> /dev/null; then
        ifconfig -a
    elif command -v ip &> /dev/null; then
        ip -s link
    else
        echo "Neither ifconfig nor ip is available on this system."
        exit 1
    fi
    echo "----------------------------------------"
    sleep 5
done
