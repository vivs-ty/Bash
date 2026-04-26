# 118. Create a script that reads environment variables for cloud credentials (e.g., `AWS_ACCESS_KEY_ID`).

#!/bin/bash

echo "Checking for AWS Credentials in the environment..."

if [ -z "$AWS_ACCESS_KEY_ID" ]; then
echo "WARNING: AWS_ACCESS_KEY_ID is not set."
else

Masking the key for security purposes
echo "AWS Access Key ID: ****${AWS_ACCESS_KEY_ID: -4}"
fi

if [ -z "$AWS_SECRET_ACCESS_KEY" ]; then
echo "WARNING: AWS_SECRET_ACCESS_KEY is not set."
else
echo "AWS Secret Access Key is SET (hidden for security)."
fi

if [ -z "$AWS_REGION" ]; then
echo "WARNING: AWS_REGION is not set. Defaulting to us-east-1."
export AWS_REGION="us-east-1"
else
echo "AWS Region: $AWS_REGION"
fi
echo "AWS credentials check complete. Remember to set these variables in your environment for AWS CLI or SDK usage."
