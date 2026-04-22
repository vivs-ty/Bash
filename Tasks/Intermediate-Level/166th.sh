# 166. Dynamically generate Terraform variable files (`.tfvars`) using Bash based on environment.

#!/bin/bash

echo "Generating Terraform variable files based on environment..."
echo "Enter the environment name (dev, staging, prod):"
read environment
case "$environment" in
    dev)
        cat > dev.tfvars <<EOL
# Development environment variables
instance_type = "t2.micro"
EOL
        echo "dev.tfvars file generated."
        ;;
    staging)
        cat > staging.tfvars <<EOL
# Staging environment variables
instance_type = "t2.small"
EOL
        echo "staging.tfvars file generated."
        ;;
    prod)
        cat > prod.tfvars <<EOL
# Production environment variables
instance_type = "t2.medium"
EOL
        echo "prod.tfvars file generated."
        ;;
    *)
        echo "Invalid environment name. Please enter dev, staging, or prod."
        exit 1
        ;;
esac
echo "Terraform variable file generated for $environment environment."
