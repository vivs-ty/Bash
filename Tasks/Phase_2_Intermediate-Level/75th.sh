# 75. Count the occurrences of each HTTP status code in an Nginx access log.

#!/bin/bash

echo "Counting the occurrences of each HTTP status code in the Nginx access log..."
echo " use the command: sudo awk '{print $9}' /var/log/nginx/access.log | sort | uniq -c | sort -nr "
echo "Results:"
sudo awk '{print $9}' /var/log/nginx/access.log | sort | uniq -c | sort -nr
