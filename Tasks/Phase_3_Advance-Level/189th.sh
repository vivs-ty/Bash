# 189. Write a script to monitor the status of multiple API endpoints.

#!/bin/bash

echo "Monitoring the status of multiple API endpoints..."
echo "------------------------------------------------"

endpoints=(
    "https://jsonplaceholder.typicode.com/posts/1"
    "https://jsonplaceholder.typicode.com/posts/2"
    "https://jsonplaceholder.typicode.com/invalid-endpoint"
)

for endpoint in "${endpoints[@]}"; do
    response=$(curl -s -o /dev/null -w "%{http_code}" "$endpoint")
    
    if [[ "$response" =~ ^2 ]]; then
        echo "  [UP]   Endpoint $endpoint (HTTP $response)"
    else
        echo "  [DOWN] Endpoint $endpoint (HTTP $response)"
    fi
done

echo -e "\nAPI endpoint monitoring completed!"
