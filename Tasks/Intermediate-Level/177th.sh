# 177. Write a script to check if a list of ports is open on a remote host using `nc` or `nmap`.

#!/bin/bash

echo "Enter the remote host:"
read host
echo "Enter a list of ports to check (separated by space):"
read -a ports
for port in "${ports[@]}"; do
    if nc -z "$host" "$port" &> /dev/null; then
        echo "Port $port is open on $host."
    else
        echo "Port $port is closed on $host."
    fi
done
