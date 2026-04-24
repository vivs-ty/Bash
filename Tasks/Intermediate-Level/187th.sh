# 187. Securely pass API keys or tokens using environment variables or other secure methods with `curl`.

#!/bin/bash

echo "Fetching data from the API using a securely stored API key..."

# Ensure the API_KEY environment variable is set
if [ -z "$API_KEY" ]; then
    echo "Error: API_KEY environment variable is not set."
    echo "Run: export API_KEY='your_token_here' before running this script."
    exit 1
fi

echo "API Key detected. Sending authenticated request..."

# Pass the token securely via the Authorization header
response_code=$(curl -s -o /dev/null -w "%{http_code}" \
    -H "Authorization: Bearer $API_KEY" \
    -X GET "https://jsonplaceholder.typicode.com/posts/1")

echo "Request completed with HTTP Status: $response_code"
