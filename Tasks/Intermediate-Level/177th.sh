# 177. Write a script to check if a list of ports is open on a remote host using `nc` or `nmap`.

#!/bin/bash

read -r -p "Enter the remote host (IP or domain): " host
read -r -p "Enter a list of ports to check (separated by space): " -a ports

echo "Scanning ports on $host..."

for port in "${ports[@]}"; do
    # -z scans for listening daemons, -w 2 sets a 2-second timeout
    if nc -z -w 2 "$host" "$port" &> /dev/null; then
        echo "  [OPEN]   Port $port is accessible."
    else
        echo "  [CLOSED] Port $port is closed or filtered."
    fi
done
