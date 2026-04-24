# 188. Construct complex JSON payloads for API requests using Bash string manipulation or external tools.


#!/bin/bash


echo "Constructing a complex JSON payload for an API request..."
json_payload=$(jq -n \
--arg title "Complex Title" \
--arg body "This is a complex body with special characters: \"quotes\", newlines\n, and tabs\t." \
--arg userId "1" \
'{
    "title": $title,
    "body": $body,
    "userId": $userId,
    "metadata": {
        "timestamp": now | todate,
        "tags": ["bash", "json", "api"]
    }
}')
echo "Constructed JSON Payload:"
echo "$json_payload"
echo "Sending the JSON payload to the API..."
response=$(curl -s -X POST "https://jsonplaceholder.typicode.com/posts" \
-H "Content-Type: application/json" \
-d "$json_payload")
echo "API Response:"
echo "$response"
echo -e "\nComplex JSON payload constructed and sent successfully!"
