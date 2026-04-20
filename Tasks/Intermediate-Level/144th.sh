# 144. Use AWS CLI to upload a file to an S3 bucket.

#!/bin/bash

BUCKET_NAME="your-bucket-name"
FILE_PATH="path/to/your/file.txt"

if [ ! -f "$FILE_PATH" ]; then
    echo "Error: Local file '$FILE_PATH' does not exist."
    exit 1
fi

echo "Uploading '$FILE_PATH' to S3 bucket: $BUCKET_NAME..."
aws s3 cp "$FILE_PATH" "s3://$BUCKET_NAME/"

if [ $? -eq 0 ]; then
    echo "File uploaded successfully to s3://$BUCKET_NAME/$(basename "$FILE_PATH")"
else
    echo "Upload failed. Please check your AWS credentials and bucket permissions."
fi
