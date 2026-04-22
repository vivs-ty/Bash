# 168. Extract output values from Terraform and use them in subsequent Bash commands.

#!/bin/bash

echo "Extracting Terraform output values..."
output_value=$(terraform output -raw my_output_variable)
echo "Extracted output value: $output_value"
echo "Using the output value in a subsequent command..."
# Example of using the output value in a subsequent command
echo "The output value is: $output_value" 
