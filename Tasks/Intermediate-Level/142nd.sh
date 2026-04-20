# 142. Use AWS CLI to start and stop an EC2 instance by its ID.

#!/bin/bash

INSTANCE_ID="i-0123456789abcdef0"

echo "Starting EC2 instance with ID: $INSTANCE_ID..."
aws ec2 start-instances --instance-ids "$INSTANCE_ID"

echo "Waiting for 30 seconds before stopping..."
sleep 30

echo "Stopping EC2 instance with ID: $INSTANCE_ID..."
aws ec2 stop-instances --instance-ids "$INSTANCE_ID"
