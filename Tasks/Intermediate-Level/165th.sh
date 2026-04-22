# 165. Create a Bash script that takes environment names (dev, staging, prod) as input and applies the corresponding Terraform configuration.

#!/bin/bash

echo "Generating Terraform variable files based on environment..."
read -r -p "Enter the environment name (dev, staging, prod): " environment

case "$environment" in
    dev)
        cat > dev.tfvars <<EOF
# Development environment variables
instance_type = "t2.micro"
environment   = "dev"
EOF
        echo "dev.tfvars file generated."
        ;;
    staging)
        cat > staging.tfvars <<EOF
# Staging environment variables
instance_type = "t2.small"
environment   = "staging"
EOF
        echo "staging.tfvars file generated."
        ;;
    prod)
        cat > prod.tfvars <<EOF
# Production environment variables
instance_type = "t2.medium"
environment   = "prod"
EOF
        echo "prod.tfvars file generated."
        ;;
    *)
        echo "Error: Invalid environment name. Please enter dev, staging, or prod."
        exit 1
        ;;
esac
