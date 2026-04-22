# 162. Write a Bash script to run `terraform plan` and save the output.

#!/bin/bash

echo "Running terraform plan..."

# Generates the binary plan file (tfplan.out) and saves the human-readable output to a text file
terraform plan -out=tfplan.out > terraform_plan_output.txt

if [ $? -eq 0 ]; then
    echo "Terraform plan executed successfully."
    echo "Output saved to 'terraform_plan_output.txt' and binary plan saved to 'tfplan.out'."
else
    echo "Error: Terraform plan failed. Check terraform_plan_output.txt for details."
    exit 1
fi
