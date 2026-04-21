# 151. Use gcloud to create and delete a firewall rule.


#!/bin/bash

echo "Creating a firewall rule using gcloud..."
read -r -p "Enter the name of the firewall rule: " FIREWALL_RULE_NAME
read -r -p "Enter the network (e.g., default): " NETWORK
read -r -p "Enter the direction (INGRESS or EGRESS): " DIRECTION
read -r -p "Enter the action (ALLOW or DENY): " ACTION
read -r -p "Enter the priority (e.g., 1000): " PRIORITY
read -r -p "Enter the source ranges (e.g., 10.0.0.0/8): " SOURCE_RANGES

echo "Creating firewall rule $FIREWALL_RULE_NAME with the specified configurations..."
gcloud compute firewall-rules create "$FIREWALL_RULE_NAME" \
    --network="$NETWORK" \
    --direction="$DIRECTION" \
    --action="$ACTION" \
    --priority="$PRIORITY" \
    --source-ranges="$SOURCE_RANGES"

if [ $? -eq 0 ]; then
    echo "Firewall rule $FIREWALL_RULE_NAME created successfully."
else
    echo "Failed to create firewall rule. Please check the error messages above and try again."
    exit 1
fi
