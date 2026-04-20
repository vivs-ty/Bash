# 142. Use AWS CLI to start and stop an EC2 instance by its ID.

#!/bin/bash
echo "Starting EC2 instance with ID i-0123456789abcdef0..."
aws ec2 start-instances --instance-ids i-0123456789abcdef0
echo "Stopping EC2 instance with ID i-0123456789abcdef0..."
aws ec2 stop-instances --instance-ids i-0123456789abcdef0
