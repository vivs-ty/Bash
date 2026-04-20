# 141. Use AWS CLI to list all EC2 instances in a specific region.

#!/bin/bash

echo "Listing all EC2 instances in the $REGION region..."
aws ec2 describe-instances \
    --region "$REGION" \
    --query 'Reservations[*].Instances[*].{Instance:InstanceId,State:State.Name,Type:InstanceType}' \
    --output table
    