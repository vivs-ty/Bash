# 97. Get the hostname and IP address of the current machine.

#!/bin/bash

hostname=$(hostname)
ip_address=$(hostname -I | awk '{print $1}')
echo "Hostname: $hostname"
echo "IP Address: $ip_address"
