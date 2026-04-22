# 163. Write a Bash script to apply the Terraform configuration (`terraform apply --auto-approve`).

#!/bin/bash

echo "Applying Terraform configuration..."

if terraform apply --auto-approve; then
    echo "Terraform configuration applied successfully."
else
    echo "Error: Failed to apply Terraform configuration."
    exit 1
fi
