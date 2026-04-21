    # 151. Use gcloud to create and delete a firewall rule.


    #!/bin/bash

    echo "Creating a firewall rule using gcloud..."
    echo "Enter the name of the firewall rule:"
    read FIREWALL_RULE_NAME
    echo "Enter the network (e.g., default):"
    read NETWORK
    echo "Enter the direction (INGRESS or EGRESS):"
    read DIRECTION
    echo "Enter the action (ALLOW or DENY):"
    read ACTION
    echo "Enter the priority (e.g., 1000):"
    read PRIORITY
    echo "Enter the source ranges (e.g., 10.0.0.0/8):"
    read SOURCE_RANGES
    echo "Creating firewall rule $FIREWALL_RULE_NAME with the specified configurations..."
    gcloud compute firewall-rules create $FIREWALL_RULE_NAME \
        --network=$NETWORK \
        --direction=$DIRECTION \
        --action=$ACTION \
        --priority=$PRIORITY \
        --source-ranges=$SOURCE_RANGES
    if [ $? -eq 0 ]; then
        echo "Firewall rule $FIREWALL_RULE_NAME created successfully."
    else
        echo "Failed to create firewall rule. Please check the error messages above and try again."
        exit 1
    fi
echo "Do you want to delete the firewall rule $FIREWALL_RULE_NAME? (yes/no)"
read DELETE_CONFIRMATION
if [ "$DELETE_CONFIRMATION" == "yes" ]; then
    echo "Deleting firewall rule $FIREWALL_RULE_NAME..."
    gcloud compute firewall-rules delete $FIREWALL_RULE_NAME --quiet
    if [ $? -eq 0 ]; then
        echo "Firewall rule $FIREWALL_RULE_NAME deleted successfully."
    else
        echo "Failed to delete firewall rule. Please check the error messages above and try again."
    fi
else
    echo "Firewall rule $FIREWALL_RULE_NAME was not deleted."
fi

