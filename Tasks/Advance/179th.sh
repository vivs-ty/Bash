# 179. Automate network diagnostics by combining `ping`, `traceroute`, and `netstat`.

#!/bin/bash

read -r -p "Enter a remote host to diagnose: " host

echo -e "\n=== Step 1: Pinging $host ==="
ping_output=$(ping -c 4 -W 2 "$host" 2>/dev/null)
if [ $? -eq 0 ]; then
    avg_latency=$(echo "$ping_output" | tail -1 | awk -F '/' '{print $5}')
    echo "Host is UP. Average latency: $avg_latency ms"
else
    echo "Host is DOWN or unreachable."
fi

echo -e "\n=== Step 2: Running traceroute to $host ==="
if command -v traceroute &> /dev/null; then
    traceroute -m 15 "$host" # Limiting to 15 hops for speed
else
    echo "traceroute command not found. Skipping."
fi

echo -e "\n=== Step 3: Checking LOCAL listening ports ==="
if command -v ss &> /dev/null; then
    ss -tuln | head -n 10
else
    netstat -tuln | head -n 10
fi
