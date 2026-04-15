# 100. Get the system uptime.

#!/bin/bash
echo "Getting the system uptime..."
uptime_info=$(uptime -p)
echo "System Uptime: $uptime_info" 
