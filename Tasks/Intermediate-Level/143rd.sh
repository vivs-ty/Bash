# 143. Use AWS CLI to get details about a specific S3 bucket.

#!/bin/bash
BUCKET_NAME="your-bucket-name"
echo "Getting details for S3 bucket: $BUCKET_NAME..."
aws s3api get-bucket-location --bucket $BUCKET_NAME
aws s3api get-bucket-acl --bucket $BUCKET_NAME
aws s3api get-bucket-policy --bucket $BUCKET_NAME
aws s3api get-bucket-versioning --bucket $BUCKET_NAME
aws s3api get-bucket-lifecycle-configuration --bucket $BUCKET_NAME
aws s3api get-bucket-encryption --bucket $BUCKET_NAME
aws s3api get-bucket-logging --bucket $BUCKET_NAME
aws s3api get-bucket-notification-configuration --bucket $BUCKET_NAME
aws s3api get-bucket-replication --bucket $BUCKET_NAME
aws s3api get-bucket-tagging --bucket $BUCKET_NAME
aws s3api get-bucket-website --bucket $BUCKET_NAME
aws s3api get-bucket-analytics-configuration --bucket $BUCKET_NAME --id "your-analytics-id"
aws s3api get-bucket-inventory-configuration --bucket $BUCKET_NAME --id "your-inventory-id"
aws s3api get-bucket-intelligent-tiering-configuration --bucket $BUCKET_NAME --id "your-intelligent-tiering-id"
aws s3api get-bucket-object-lock-configuration --bucket $BUCKET_NAME
aws s3api get-bucket-object-lock-legal-hold --bucket $BUCKET_NAME--object-lock-configuration "your-object-lock-configuration-id"
aws s3api get-bucket-object-lock-retention --bucket $BUCKET_NAME --object-lock-configuration "your-object-lock-configuration-id"
aws s3api get-bucket-object-lock-retention --bucket $BUCKET_NAME --object-lock-configuration "your-object-lock-configuration-id" --object-lock-retention "your-object-lock-retention-id"
aws s3api get-bucket-object-lock-configuration --bucket $BUCKET_NAME --object-lock-configuration "your-object-lock-configuration-id"
aws s3api get-bucket-object-lock-legal-hold --bucket $BUCKET_NAME --object-lock-configuration "your-object-lock-configuration-id"
aws s3api get-bucket-object-lock-retention --bucket $BUCKET_NAME --object-lock-configuration "your-object-lock-configuration-id" --object-lock-retention "your-object-lock-retention-id"
aws s3api get-bucket-object-lock-configuration --bucket $BUCKET_NAME --object-lock-configuration "your-object-lock-configuration-id"
aws s3api get-bucket-object-lock-legal-hold --bucket $BUCKET_NAME --object-lock-configuration "your-object-lock-configuration-id"
aws s3api get-bucket-object-lock-retention --bucket $BUCKET_NAME --object-lock-configuration "your-object-lock-configuration-id" --object-lock-retention "your-object-lock-retention-id"

