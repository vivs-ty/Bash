# 165. Create a Bash script that takes environment names (dev, staging, prod) as input and applies the corresponding Terraform configuration.

#!/bin/bash

echo "Enter the environment name (dev, staging, prod):"
read environment
case "$environment" in
    dev)
        echo "Applying Terraform configuration for development environment..."
        terraform apply -var-file=dev.tfvars --auto-approve
        ;;
    staging)
        echo "Applying Terraform configuration for staging environment..."
        terraform apply -var-file=staging.tfvars --auto-approve
        ;;
    prod)
        echo "Applying Terraform configuration for production environment..."
        terraform apply -var-file=prod.tfvars --auto-approve
        ;;
    *)
        echo "Invalid environment name. Please enter dev, staging, or prod."
        exit 1
        ;;
esac
echo "Terraform configuration applied for $environment environment."
