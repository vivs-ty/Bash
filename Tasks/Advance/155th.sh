# 155. Write a script to deploy a static website to S3 using AWS CLI.

#!/bin/bash

echo "Starting static website deployment to S3..."
read -r -p "Enter the name of your S3 bucket (must be globally unique): " BUCKET_NAME
read -r -p "Enter the path to your local website files (e.g., ./build): " WEBSITE_PATH

if [ ! -d "$WEBSITE_PATH" ]; then
    echo "Error: Directory $WEBSITE_PATH does not exist."
    exit 1
fi

echo "Creating S3 bucket $BUCKET_NAME..."
aws s3 mb "s3://$BUCKET_NAME"

if [ $? -ne 0 ]; then
    echo "Failed to create bucket. It may already exist or the name is taken."
    exit 1
fi

echo "Uploading files from $WEBSITE_PATH to s3://$BUCKET_NAME..."
aws s3 sync "$WEBSITE_PATH" "s3://$BUCKET_NAME/"

echo "Configuring bucket for static website hosting..."
aws s3 website "s3://$BUCKET_NAME/" --index-document index.html --error-document error.html

echo "Deployment complete! Ensure your bucket policy allows public read access for the website to be visible."
