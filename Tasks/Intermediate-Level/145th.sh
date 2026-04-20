# 145. Use AWS CLI to list all IAM users.

#!/bin/bash

echo "Retrieving the list of all IAM users in the AWS account..."
aws iam list-users \
    --query 'Users[*].{UserName:UserName,UserId:UserId,CreateDate:CreateDate}' \
    --output table
    