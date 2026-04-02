# 69. Create a script to ping a list of IP addresses and report their reachability.

#!/bin/bash
# List of IP addresses to ping
IP_LIST=("192.168.1.1" "8.8.8.8" "8.8.4.4")

# Ping each IP address and report reachability
for IP in "${IP_LIST[@]}"; do
    if ping -c 1 "$IP" &> /dev/null; then
        echo "IP $IP is reachable."
    else
        echo "IP $IP is not reachable."
    fi
done
