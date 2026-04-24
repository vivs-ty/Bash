# 184. Send a DELETE request to remove a resource via an API.

#!/bin/bash

echo "Sending a DELETE request to remove the resource..."

# Capture the HTTP status code to verify success, discarding the body
http_code=$(curl -s -o /dev/null -w "%{http_code}" -X DELETE "https://jsonplaceholder.typicode.com/posts/1")

# 200 (OK), 202 (Accepted), or 204 (No Content) indicate a successful delete
if [[ "$http_code" =~ ^20[024]$ ]]; then
    echo "Resource deleted successfully! (HTTP Status: $http_code)"
else
    echo "Failed to delete the resource. (HTTP Status: $http_code)"
fi
