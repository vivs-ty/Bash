# 173. Use `curl` to send a POST request to an API endpoint with JSON data.

#!/bin/bash

echo "Enter the API endpoint URL:"
read url
echo "Enter the JSON data to send (e.g., {\"key\":\"value\"}):"
read json_data
response=$(curl -s -w "%{http_code}" -o /dev/null -X POST -H "Content-Type: application/json" -d "$json_data" "$url")
if [ "$response" -eq 200 ]; then
    echo "POST request successful with status code: $response"
else
    echo "Failed to send POST request. HTTP status code: $response"
fi
