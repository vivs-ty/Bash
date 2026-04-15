# 133. Validate user input in a script.

#!/bin/bash

validate_input() {
    local input="$1"
    local field_name="$2"
    
    if [ -z "$input" ]; then
        echo "Error: $field_name cannot be empty"
        return 1
    fi
    
    return 0
}

validate_email() {
    local email="$1"
    
    if [[ ! "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
        echo "Error: Invalid email format"
        return 1
    fi
    
    return 0
}

validate_number() {
    local num="$1"
    local min="$2"
    local max="$3"
    
    if ! [[ "$num" =~ ^[0-9]+$ ]]; then
        echo "Error: Must be a valid number"
        return 1
    fi
    
    if [ "$num" -lt "$min" ] || [ "$num" -gt "$max" ]; then
        echo "Error: Number must be between $min and $max"
        return 1
    fi
    
    return 0
}

echo "=== User Input Validation Demo ==="
echo

echo "Enter server name:"
read server_name
if ! validate_input "$server_name" "Server name"; then
    exit 1
fi
echo "Server name validated: $server_name"
echo

echo "Enter email address:"
read email
if ! validate_email "$email"; then
    exit 1
fi
echo "Email validated: $email"
echo

echo "Enter port number (1-65535):"
read port
if ! validate_number "$port" 1 65535; then
    exit 1
fi
echo "Port validated: $port"
echo

echo "All inputs validated successfully!"