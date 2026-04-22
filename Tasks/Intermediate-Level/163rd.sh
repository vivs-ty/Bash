# 163. Write a Bash script to apply the Terraform configuration (`terraform apply --auto-approve`).

#!/bin/bash

echo "Applying Terraform configuration..."
terraform apply --auto-approve
echo "Terraform configuration applied."
