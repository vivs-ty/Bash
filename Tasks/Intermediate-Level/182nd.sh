# 182. Parse specific data fields from a JSON API response using `jq`.

#!/bin/bash

echo "Fetching data from a public REST API..."
response=$(curl -s -X GET "https://jsonplaceholder.typicode.com/posts/1")
echo "Parsing specific data fields from the JSON response..."
title=$(echo "$response" | jq -r '.title')
body=$(echo "$response" | jq -r '.body')
echo "Title: $title"
echo "Body: $body"
echo -e "\nData parsed successfully!"
