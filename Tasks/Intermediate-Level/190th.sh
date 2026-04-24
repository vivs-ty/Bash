# 190. Transform data retrieved from one API and send it to another.

#!/bin/bash

echo "1. Fetching data from the first API..."
response=$(curl -s -X GET "https://jsonplaceholder.typicode.com/posts/1")

echo "2. Transforming data..."
# Extract specific fields and format them compactly (-c) for the POST request
transformed_data=$(echo "$response" | jq -c '{title: .title, body: .body, userId: .userId, transformed: true}')

echo "   Transformed payload: $transformed_data"

echo "3. Sending transformed data to the second API..."
second_response=$(curl -s -X POST "https://jsonplaceholder.typicode.com/posts" \
    -H "Content-Type: application/json" \
    -d "$transformed_data")

echo "----------------------------------------"
echo "Response from the target API:"
echo "$second_response" | jq .
