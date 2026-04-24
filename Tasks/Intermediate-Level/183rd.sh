# 183. Send a PUT request to update a resource via an API using `curl` and `jq`.

#!/bin/bash

echo "Fetching current data from the API..."
current_response=$(curl -s -X GET "https://jsonplaceholder.typicode.com/posts/1")
echo "Current Title: $(echo "$current_response" | jq -r '.title')"
echo "Current Body: $(echo "$current_response" | jq -r '.body')"
echo "Updating the resource with new data..."
updated_response=$(curl -s -X PUT "https://jsonplaceholder.typicode.com/posts/1" \
-H "Content-Type: application/json" \
-d '{"id":1,"title":"Updated Title","body":"Updated Body","userId":1}')
echo "Updated Title: $(echo "$updated_response" | jq -r '.title')"
echo "Updated Body: $(echo "$updated_response" | jq -r '.body')"
echo -e "\nResource updated successfully!"
