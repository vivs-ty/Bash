# 161. Write a Bash script to initialize a Terraform project (`terraform init`).

#!/bin/bash

echo "Initializing Terraform project..."

if terraform init; then
    echo "Terraform project initialized successfully."
else
    echo "Error: Failed to initialize Terraform. Please check your configuration."
    exit 1
fi
