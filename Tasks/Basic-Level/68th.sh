# 68. Create a script to check the status of a web server using `curl`.

#!/bin/bash
echo "Enter the URL of the web server you want to check:"
read -r url

# Check the status of the web server
status=$(curl -o /dev/null -s -w "%{http_code}\n" "$url")

if [ "$status" -eq 200 ]; then
    echo "The web server is up and running."
else
    echo "The web server is down or unreachable. Status code: $status"
fi
