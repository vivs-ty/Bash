# 171. Use `ping` to check the latency to multiple hosts and report the average.

#!/bin/bash

read -r -p "Enter a list of hosts (separated by space): " -a hosts

for host in "${hosts[@]}"; do
    echo "Pinging $host..."
    
    # Capture the output of ping. -c 4 means 4 packets, -W 2 means 2-second timeout.
    ping_output=$(ping -c 4 -W 2 "$host" 2>/dev/null)
    
    if [ $? -eq 0 ]; then
        # Extract the average latency from the final summary line
        avg_latency=$(echo "$ping_output" | tail -1 | awk -F '/' '{print $5}')
        echo "  Average latency to $host: $avg_latency ms"
    else
        echo "  Host $host is unreachable or timed out."
    fi
done
