# 184. Send a DELETE request to remove a resource via an API.

#!/bin/bash

echo "Fetching current data from the API..."
current_response=$(curl -s -X GET "https://jsonplaceholder.typicode.com/posts/1")
echo "Current Title: $(echo "$current_response" | jq -r '.title')"
echo "Current Body: $(echo "$current_response" | jq -r '.body')"
echo "Sending a DELETE request to remove the resource..."
delete_response=$(curl -s -X DELETE "https://jsonplaceholder.typicode.com/posts/1")
if [ "$delete_response" == "" ]; then
    echo "Resource deleted successfully!"
else
    echo "Failed to delete the resource. Response: $delete_response"
fi
