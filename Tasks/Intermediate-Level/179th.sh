# 179. Automate network diagnostics by combining `ping`, `traceroute`, and `netstat`.

#!/bin/bash

echo "Enter a host to diagnose:"
read host
echo "Pinging $host..."
ping -c 4 "$host" | tail -1 | awk -F '/' '{print "Average latency to " $1 ": " $5 " ms"}'
echo "Running traceroute to $host..."
traceroute "$host"
echo "Checking network connections with netstat..."
netstat -tuln
