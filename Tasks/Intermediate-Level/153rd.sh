# 153. Use gcloud to deploy a Cloud Function.

#!/bin/bash

echo "Deploying a Cloud Function using gcloud..."
read -r -p "Please enter the name of your Cloud Function: " FUNCTION_NAME
read -r -p "Please enter the path to your function's source code (e.g., ./my-function): " SOURCE_PATH
read -r -p "Please enter the runtime (e.g., nodejs20, python310): " RUNTIME
read -r -p "Please enter the trigger type (http or pubsub): " TRIGGER_TYPE

if [ "$TRIGGER_TYPE" == "http" ]; then
    gcloud functions deploy "$FUNCTION_NAME" \
        --runtime="$RUNTIME" \
        --trigger-http \
        --source="$SOURCE_PATH" \
        --allow-unauthenticated
elif [ "$TRIGGER_TYPE" == "pubsub" ]; then
    read -r -p "Please enter the name of the Pub/Sub topic to trigger the function: " TOPIC_NAME
    gcloud functions deploy "$FUNCTION_NAME" \
        --runtime="$RUNTIME" \
        --trigger-topic="$TOPIC_NAME" \
        --source="$SOURCE_PATH"
else
    echo "Unsupported trigger type. Please use 'http' or 'pubsub'."
    exit 1
fi
