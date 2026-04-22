# 167. Use Bash to loop through a list of regions and deploy infrastructure using Terraform in each region.

#!/bin/bash

read -r -p "Enter the regions to deploy (comma-separated, e.g., us-east-1,us-west-2): " regions

# Set Internal Field Separator to comma and read into an array
IFS=',' read -r -a region_array <<< "$regions"

for region in "${region_array[@]}"; do
    # Trim whitespace just in case the user added spaces after commas
    region=$(echo "$region" | xargs)
    
    echo "------------------------------------------------"
    echo "Deploying infrastructure in region: $region"
    
    if terraform apply -var="region=$region" --auto-approve; then
        echo "Infrastructure deployed successfully in region: $region"
    else
        echo "Error deploying infrastructure in region: $region. Skipping to next region."
        continue
    fi
done

echo "Deployment process completed for all specified regions."
