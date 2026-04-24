# 186. Handle different HTTP response codes in your API interaction scripts.

#!/bin/bash

echo "Fetching data from the API and handling HTTP response codes..."
response=$(curl -s -w "%{http_code}" -X GET "https://json
placeholder.typicode.com/posts/1")
http_code="${response: -3}"
body="${response:0:-3}"
case $http_code in
    200)
        echo "Success! Data fetched:"
        echo "$body" | jq
        ;;
    404)
        echo "Error: Resource not found (404)."
        ;;
    500)
        echo "Error: Internal server error (500)."
        ;;
    *)
        echo "Received HTTP response code: $http_code"
        ;;
esac
echo -e "\nAPI interaction completed with response code: $http_code"
