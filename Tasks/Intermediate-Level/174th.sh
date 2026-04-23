# 174. Use `curl` to interact with an API that requires authentication (e.g., Basic Auth, API keys).

#!/bin/bash

read -r -p "Enter the API endpoint URL: " url
read -r -p "Enter the authentication method (basic/api): " auth_method

if [ "$auth_method" == "basic" ]; then
    read -r -p "Enter username: " username
    read -r -s -p "Enter password: " password
    echo "" # Add a newline after silent password input
    
    echo "Authenticating via Basic Auth..."
    response=$(curl -s -w "%{http_code}" -o /dev/null -u "$username:$password" "$url")
    
elif [ "$auth_method" == "api" ]; then
    read -r -s -p "Enter API Key / Bearer Token: " api_key
    echo "" # Add a newline after silent input
    
    echo "Authenticating via Bearer Token..."
    response=$(curl -s -w "%{http_code}" -o /dev/null -H "Authorization: Bearer $api_key" "$url")
else
    echo "Invalid authentication method specified."
    exit 1
fi

if [[ "$response" =~ ^2 ]]; then
    echo "Authentication successful! (HTTP status code: $response)"
else
    echo "Authentication failed or access denied. (HTTP status code: $response)"
fi
