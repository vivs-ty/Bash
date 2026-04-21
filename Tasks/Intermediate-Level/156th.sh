# 156. Write a script to create a new Azure Container Registry using Azure CLI.

#!/bin/bash

read -r -p "Enter the name of the Azure Container Registry (alphanumeric only): " ACR_NAME
read -r -p "Enter the resource group name: " RESOURCE_GROUP
read -r -p "Enter the location (e.g., eastus): " LOCATION

echo "Creating Azure Container Registry $ACR_NAME in resource group $RESOURCE_GROUP at location $LOCATION..."
az acr create \
    --name "$ACR_NAME" \
    --resource-group "$RESOURCE_GROUP" \
    --location "$LOCATION" \
    --sku Basic

if [ $? -eq 0 ]; then
    echo "Azure Container Registry $ACR_NAME created successfully."
else
    echo "Failed to create Azure Container Registry. Please check the error messages above."
fi
