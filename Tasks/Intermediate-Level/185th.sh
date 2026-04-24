# 185. Implement pagination handling when fetching data from APIs.

#!/bin/bash

echo "Fetching paginated data from the API..."
echo "---------------------------------------"

page=1
while true; do
    response=$(curl -s -X GET "https://jsonplaceholder.typicode.com/posts?_page=$page&_limit=5")
    
    # Check if the response is empty or contains an empty JSON array
    if [ -z "$response" ] || [ "$response" == "[]" ]; then
        echo "No more data to fetch. Exiting pagination loop."
        break
    fi
    
    echo "--- Page $page ---"
    echo "$response" | jq -r '.[] | "ID: \(.id) | Title: \(.title)"'
    echo ""
    
    ((page++))
done

echo "Paginated data fetched successfully!"
