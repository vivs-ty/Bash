# 173. Use `curl` to send a POST request to an API endpoint with JSON data.

#!/bin/bash

read -r -p "Enter the API endpoint URL: " url
read -r -p "Enter the JSON data to send (e.g., {\"key\":\"value\"}): " json_data

echo "Sending POST request..."
response=$(curl -s -w "%{http_code}" -o /dev/null -X POST -H "Content-Type: application/json" -d "$json_data" "$url")

# Accept any 2xx success status code (200 OK, 201 Created, etc.)
if [[ "$response" =~ ^2 ]]; then
    echo "POST request successful! (HTTP status code: $response)"
else
    echo "Failed to send POST request. (HTTP status code: $response)"
fi
