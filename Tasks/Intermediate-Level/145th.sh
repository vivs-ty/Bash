# 145. Use AWS CLI to list all IAM users.

#!/bin/bash
echo "Listing all IAM users..."
aws iam list-users --query 'Users[*].{UserName:UserName,UserId:UserId,CreateDate:CreateDate}' --output table
