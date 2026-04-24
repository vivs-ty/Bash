# 186. Handle different HTTP response codes in your API interaction scripts.

#!/bin/bash

echo "Fetching data from the API and handling HTTP response codes..."

# Create a temporary file to store the response body cleanly
temp_body=$(mktemp)

# Write the body to the temp file and capture only the HTTP code in the variable
http_code=$(curl -s -w "%{http_code}" -o "$temp_body" -X GET "https://jsonplaceholder.typicode.com/posts/1")

echo "Received HTTP Status: $http_code"
echo "----------------------------------------"

case $http_code in
    200|201)
        echo "Success! Data fetched:"
        jq . "$temp_body"
        ;;
    401|403)
        echo "Error: Unauthorized or Forbidden. Check your API credentials."
        ;;
    404)
        echo "Error: Resource not found (404)."
        ;;
    500|502|503|504)
        echo "Error: Server error ($http_code). The API is currently down."
        ;;
    *)
        echo "Unexpected HTTP response code: $http_code"
        ;;
esac

# Clean up the temporary file
rm -f "$temp_body"
