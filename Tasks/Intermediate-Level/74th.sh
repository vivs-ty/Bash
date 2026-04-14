# 74. Extract all unique IP addresses from an Apache access log

#!/bin/bash

echo "Extracting all unique IP addresses from the Apache access log..."
echo " use the command: sudo awk '{print $1}' /var/log/apache2/access.log | sort -u"
echo "Results:"
sudo awk '{print $1}' /var/log/apache2/access.log | sort -u

