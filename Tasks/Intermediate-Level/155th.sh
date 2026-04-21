# 155. Write a script to deploy a static website to S3 using AWS CLI.

#!/bin/bash

echo "Enter the name of your S3 bucket (must be globally unique):"
read BUCKET_NAME
echo "Enter the path to your website files (e.g., /path/to/website):"
read WEBSITE_PATH
echo "Creating S3 bucket $BUCKET_NAME..."
aws s3 mb s3://$BUCKET_NAME
if [ $? -eq 0 ]; then
    echo "Bucket $BUCKET_NAME created successfully."
else
    echo "Failed to create bucket. Please check the error messages above and try again."
    exit 1
fi
