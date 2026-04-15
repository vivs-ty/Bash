# 97. Get the hostname and IP address of the current machine.

#!/bin/bash

hostname=$(hostname)
# Note: 'hostname -I' is specific to Linux. On macOS/BSD, 'ipconfig getifaddr en0' is typically used.
ip_address=$(hostname -I | awk '{print $1}') 
echo "Hostname: $hostname"
echo "IP Address: $ip_address"
