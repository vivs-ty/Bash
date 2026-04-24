# 181. Fetch data from a public REST API using `curl`.

#! /bin/bash

echo "Fetching data from a public REST API..."
curl -X GET "https://jsonplaceholder.typicode.com/posts/1"
echo -e "\nData fetched successfully!"
