# 172. Use `curl` to download a file and check its HTTP status code.

#!/bin/bash

echo "Enter the URL of the file to download:"
read url
response=$(curl -w "%{http_code}" -o /dev/null -s "$url")
if [ "$response" -eq 200 ]; then
    echo "File downloaded successfully with status code: $response"
else
    echo "Failed to download file. HTTP status code: $response"
fi
