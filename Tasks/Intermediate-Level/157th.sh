# 157. Write a script to deploy an ARM template using Azure CLI.

#!/bin/bash

echo "Starting ARM template deployment..."
read -r -p "Please enter the name of your resource group: " RESOURCE_GROUP
read -r -p "Please enter the name of your deployment: " DEPLOYMENT_NAME
read -r -p "Please enter the path to your ARM template file (e.g., template.json): " TEMPLATE_FILE
read -r -p "Please enter the path to your parameters file (e.g., parameters.json): " PARAMETERS_FILE 

if [ ! -f "$TEMPLATE_FILE" ] || [ ! -f "$PARAMETERS_FILE" ]; then
    echo "Error: Template or parameters file not found."
    exit 1
fi

az deployment group create \
    --resource-group "$RESOURCE_GROUP" \
    --name "$DEPLOYMENT_NAME" \
    --template-file "$TEMPLATE_FILE" \
    --parameters @"$PARAMETERS_FILE"

if [ $? -eq 0 ]; then
    echo "ARM template deployed successfully! Deployment name: $DEPLOYMENT_NAME."
else
    echo "Failed to deploy ARM template. Please check the error messages above."
fi
