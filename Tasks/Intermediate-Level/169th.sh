# 169. Implement error handling for Terraform commands within a Bash script.

#!/bin/bash

echo "Running Terraform command with error handling..."
if terraform apply --auto-approve; then
    echo "Terraform command executed successfully."
else
    echo "Error: Terraform command failed. Please check the output for details."
    exit 1
fi
