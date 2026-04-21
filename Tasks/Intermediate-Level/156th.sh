# 156. Write a script to create a new Azure Container Registry using Azure CLI.

#!/bin/bash

echo "Enter the name of the Azure Container Registry:"
read ACR_NAME
echo "Enter the resource group name:"
read RESOURCE_GROUP
echo "Enter the location (e.g., eastus):"
read LOCATION
echo "Creating Azure Container Registry $ACR_NAME in resource group $RESOURCE_GROUP at location $LOCATION..."
az acr create --name $ACR_NAME --resource-group $RESOURCE_GROUP --location $LOCATION
if [ $? -eq 0 ]; then
    echo "Azure Container Registry $ACR_NAME created successfully in resource group $RESOURCE_GROUP at location $LOCATION."
else
    echo "Failed to create Azure Container Registry. Please check the error messages above and try again."
fi
