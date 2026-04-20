# 143. Use AWS CLI to get details about a specific S3 bucket.

#!/bin/bash

BUCKET_NAME="your-bucket-name"

echo "Retrieving details for S3 bucket: $BUCKET_NAME..."
echo "------------------------------------------------"

echo "1. Bucket Location:"
aws s3api get-bucket-location --bucket "$BUCKET_NAME" 2>/dev/null || echo "Not configured or access denied."

echo -e "\n2. Bucket Versioning Status:"
aws s3api get-bucket-versioning --bucket "$BUCKET_NAME" 2>/dev/null || echo "Not configured."

echo -e "\n3. Default Encryption:"
aws s3api get-bucket-encryption --bucket "$BUCKET_NAME" 2>/dev/null || echo "No default encryption configured."

echo -e "\n4. Bucket Tags:"
aws s3api get-bucket-tagging --bucket "$BUCKET_NAME" 2>/dev/null || echo "No tags found."
