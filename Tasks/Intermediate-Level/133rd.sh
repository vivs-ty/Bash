#!/bin/bash

validate_input() {
    local input="$1"
    local field_name="$2"
    
    if [ -z "$input" ]; then
        echo "Error: The '$field_name' field cannot be empty."
        return 1
    fi
    
    return 0
}

validate_email() {
    local email="$1"
    
    if [[ ! "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
        echo "Error: Invalid email address format."
        return 1
    fi
    
    return 0
}

validate_number() {
    local num="$1"
    local min="$2"
    local max="$3"
    
    if ! [[ "$num" =~ ^[0-9]+$ ]]; then
        echo "Error: Input must be a valid numeric value."
        return 1
    fi
    
    if [ "$num" -lt "$min" ] || [ "$num" -gt "$max" ]; then
        echo "Error: The number must fall between $min and $max."
        return 1
    fi
    
    return 0
}

echo "=== User Input Validation Utility ==="
echo

read -r -p "Enter the target server name: " server_name
if ! validate_input "$server_name" "Server name"; then
    exit 1
fi
echo "Server name successfully validated: $server_name"
echo

read -r -p "Enter your email address: " email
if ! validate_email "$email"; then
    exit 1
fi
echo "Email address successfully validated: $email"
echo

read -r -p "Enter the port number (1-65535): " port
if ! validate_number "$port" 1 65535; then
    exit 1
fi
echo "Port number successfully validated: $port"
echo

echo "All user inputs have been successfully validated."
