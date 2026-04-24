# 190. Transform data retrieved from one API and send it to another.


#!/bin/bash

echo "Fetching data from the first API..."
response=$(curl -s -X GET "https://jsonplaceholder.typicode.com/posts/1")
echo "Transforming data for the second API..."
transformed_data=$(echo "$response" | jq -c '{title: .title, body: .body, userId: .userId}')
echo "Sending transformed data to the second API..."
second_response=$(curl -s -X POST "https://jsonplaceholder.typicode.com/posts" \
-H "Content-Type: application/json" \
-d "$transformed_data")
echo "Response from the second API:"
echo "$second_response"
echo -e "\nData transformed and sent successfully!"
