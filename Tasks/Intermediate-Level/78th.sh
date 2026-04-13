# 78. Extract specific columns (e.g., timestamp and request method) from a web server log using `awk`.

#!/bin/bash

echo "Extracting specific columns (timestamp and request method) from the web server log..."
echo " use the command: awk '{print $4, $6}' /var/log/nginx/access.log "
echo "Results:"
awk '{print $4, $6}' /var/log/nginx/access.log
