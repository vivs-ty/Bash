# 68. Create a script to check the status of a web server using `curl`.

#!/bin/bash
echo "Enter the URL of the web server you want to check:"
read -r url

if curl -s "$url" > /dev/null; then
    echo "The web server is up and running."
else
    echo "The web server is down or unreachable."
fi
