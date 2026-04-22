# 162. Write a Bash script to run `terraform plan` and save the output.

#!/bin/bash

echo "Running terraform plan..."
terraform plan -out=tfplan.out > terraform_plan_output.txt
echo "Terraform plan output saved to terraform_plan_output.txt and tfplan.out."
