# 171. Use `ping` to check the latency to multiple hosts and report the average.

#!/bin/bash

echo "Enter a list of hosts (separated by space):"
read -a hosts
for host in "${hosts[@]}"; do
    echo "Pinging $host..."
    ping -c 4 "$host" | tail -1 | awk -F '/' '{print "Average latency to " $1 ": " $5 " ms"}'
done
