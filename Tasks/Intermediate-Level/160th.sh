# 160. Parse JSON output from cloud CLIs using `jq` to extract specific information.

#!/bin/bash

echo "Parsing JSON output from gcloud to extract instance names and zones..."
gcloud compute instances list --format=json | jq -r '.[] | "\(.name) in zone \(.zone)"'
echo "Parsing JSON output from AWS CLI to extract S3 bucket names..."
aws s3api list-buckets --query "Buckets[].Name" --output json | jq -r '.[]'
echo "Parsing JSON output from Azure CLI to extract resource group names..."
az group list --output json | jq -r '.[].name'
echo "Parsing JSON output from gcloud to extract Cloud Storage bucket names..."
gcloud storage buckets list --format=json | jq -r '.[].name'
echo "Parsing JSON output from AWS CLI to extract EC2 instance IDs..."
aws ec2 describe-instances --query "Reservations[].Instances[].InstanceId" --output json | jq -r '.[]'
echo "Parsing JSON output from Azure CLI to extract virtual machine names..."
az vm list --output json | jq -r '.[].name' 
echo "Parsing JSON output from gcloud to extract Cloud Functions names..."
gcloud functions list --format=json | jq -r '.[].name'
echo "Parsing JSON output from AWS CLI to extract Lambda function names..."
aws lambda list-functions --query "Functions[].FunctionName" --output json | jq -r '.[]'
echo "Parsing JSON output from Azure CLI to extract App Service names..."
az webapp list --output json | jq -r '.[].name'
