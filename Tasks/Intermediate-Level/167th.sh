# 167. Use Bash to loop through a list of regions and deploy infrastructure using Terraform in each region.

#!/bin/bash

echo "Enter the regions to deploy (comma-separated, e.g., us-east-1,us-west-2):"
read regions
IFS=',' read -ra region_array <<< "$regions"
for region in "${region_array[@]}"; do
    echo "Deploying infrastructure in region: $region"
    terraform apply -var="region=$region" --auto-approve
    if [ $? -ne 0 ]; then
        echo "Error deploying infrastructure in region: $region. Skipping to next region."
        continue
    fi
    echo "Infrastructure deployed successfully in region: $region"
done
echo "Deployment process completed for all specified regions."
