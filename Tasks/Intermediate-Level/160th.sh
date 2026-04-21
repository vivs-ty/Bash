# 160. Parse JSON output from cloud CLIs using `jq` to extract specific information.

#!/bin/bash

if ! command -v jq &> /dev/null; then
    echo "Error: 'jq' is not installed. Please install jq to run this script."
    exit 1
fi

echo "=== Testing gcloud ==="
if command -v gcloud &> /dev/null; then
    echo "Extracting instance names and zones..."
    gcloud compute instances list --format=json | jq -r '.[] | "\(.name) in zone \(.zone)"'
    
    echo "Extracting Cloud Storage bucket names..."
    gcloud storage buckets list --format=json | jq -r '.[].name'
else
    echo "gcloud CLI not found. Skipping GCP commands."
fi

echo -e "\n=== Testing AWS CLI ==="
if command -v aws &> /dev/null; then
    echo "Extracting S3 bucket names..."
    aws s3api list-buckets --query "Buckets[].Name" --output json | jq -r '.[]'
    
    echo "Extracting EC2 instance IDs..."
    aws ec2 describe-instances --query "Reservations[].Instances[].InstanceId" --output json | jq -r '.[]'
else
    echo "AWS CLI not found. Skipping AWS commands."
fi

echo -e "\n=== Testing Azure CLI ==="
if command -v az &> /dev/null; then
    echo "Extracting resource group names..."
    az group list --output json | jq -r '.[].name'
    
    echo "Extracting virtual machine names..."
    az vm list --output json | jq -r '.[].name' 
else
    echo "Azure CLI not found. Skipping Azure commands."
fi

echo -e "\nJSON Parsing Complete!"
