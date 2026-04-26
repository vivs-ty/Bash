# 69. Create a script to ping a list of IP addresses and report their reachability.

#!/bin/bash
for IP in 192.168.1.1 8.8.8.8 8.8.4.4; do
    if ping -c 1 "$IP" > /dev/null 2>&1; then
        echo "IP $IP is reachable."
    else
        echo "IP $IP is not reachable."
    fi
done
