# 158. Write a script to create a new Google Compute Engine instance with specific configurations using `gcloud`.

#!/bin/bash

read -r -p "Enter the name of the instance: " INSTANCE_NAME
read -r -p "Enter the zone (e.g., us-central1-a): " ZONE
read -r -p "Enter the machine type (e.g., e2-medium): " MACHINE_TYPE
read -r -p "Enter the image family (e.g., debian-11): " IMAGE_FAMILY
read -r -p "Enter the image project (e.g., debian-cloud): " IMAGE_PROJECT

echo "Creating a new Google Compute Engine instance with the specified configurations..."
gcloud compute instances create "$INSTANCE_NAME" \
    --zone="$ZONE" \
    --machine-type="$MACHINE_TYPE" \
    --image-family="$IMAGE_FAMILY" \
    --image-project="$IMAGE_PROJECT"

if [ $? -eq 0 ]; then
    echo "Instance $INSTANCE_NAME created successfully in zone $ZONE."
else
    echo "Failed to create instance. Please check the error messages above."
fi
