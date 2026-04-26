# 168. Extract output values from Terraform and use them in subsequent Bash commands.

#!/bin/bash

echo "Extracting Terraform output values..."

# Use -raw to get the string without quotes, perfect for bash variables
output_value=$(terraform output -raw my_output_variable 2>/dev/null)

if [ -z "$output_value" ]; then
    echo "Error: Output variable 'my_output_variable' is empty or not found."
    exit 1
fi

echo "Extracted output value: $output_value"
echo "Using the output value in a subsequent command..."

# Example: Using the extracted value (e.g., an IP address or URL) in a curl command
# curl -s "http://$output_value/health"
echo "The system at $output_value is ready for configuration."
