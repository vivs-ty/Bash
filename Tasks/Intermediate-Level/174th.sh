# 174. Use `curl` to interact with an API that requires authentication (e.g., Basic Auth, API keys).

#!/bin/bash

echo "Enter the API endpoint URL:"
read url
echo "Enter the authentication method (basic/api):"
read auth_method
if [ "$auth_method" == "basic" ]; then
    echo "Enter username:"
    read username
    echo "Enter password:"
    read -s password
    response=$(curl -w "%{http_code}" -o /dev/null -s -u "$username:$password" "$url")
elif [ "$auth_method" == "api" ]; then
    echo "Enter API key:"
    read api_key
    response=$(curl -w "%{http_code}" -o /dev/null -s -H "Authorization: Bearer $api_key" "$url")
else
    echo "Invalid authentication method."
    exit 1
fi
