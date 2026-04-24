# 189. Write a script to monitor the status of multiple API endpoints.

#!/bin/bash

echo "Monitoring the status of multiple API endpoints..."
endpoints=(
    "https://jsonplaceholder.typicode.com/posts/1"
    "https://jsonplaceholder.typicode.com/posts/2"
    "https://jsonplaceholder.typicode.com/posts/3"
)
for endpoint in "${endpoints[@]}"; do
    response=$(curl -s -o /dev/null -w "%{http_code}" "$endpoint")
    if [ "$response" -eq 200 ]; then
        echo "Endpoint $endpoint is UP (HTTP 200)"
    else
        echo "Endpoint $endpoint is DOWN (HTTP $response)"
    fi
done
echo -e "\nAPI endpoint monitoring completed!"
