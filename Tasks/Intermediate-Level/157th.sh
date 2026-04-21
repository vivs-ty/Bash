# 157. Write a script to deploy an ARM template using Azure CLI.

#!/bin/bash

echo "Starting ARM template deployment..."
echo "Please enter the name of your resource group:"
read RESOURCE_GROUP
echo "Please enter the name of your deployment:"
read DEPLOYMENT_NAME
echo "Please enter the path to your ARM template file (e.g., template.json):"
read TEMPLATE_FILE
echo "Please enter the path to your parameters file (e.g., parameters.json):"
read PARAMETERS_FILE 
az deployment group create --resource-group $RESOURCE_GROUP --name $DEPLOYMENT_NAME --template-file $TEMPLATE_FILE --parameters @$PARAMETERS_FILE
if [ $? -eq 0 ]; then
    echo "ARM template deployed successfully! Deployment name: $DEPLOYMENT_NAME in resource group $RESOURCE_GROUP."
else
    echo "Failed to deploy ARM template. Please check the error messages above and try again."
fi
