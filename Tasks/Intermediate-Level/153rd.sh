# 153. Use gcloud to deploy a Cloud Function.

#!/bin/bash

echo "Deploying a Cloud Function using gcloud..."
echo "Please enter the name of your Cloud Function:"
read FUNCTION_NAME
echo "Please enter the path to your function's source code (e.g., /path/to/function):"
read SOURCE_PATH
echo "Please enter the runtime (e.g., nodejs14, python39):"
read RUNTIME
echo "Please enter the trigger type (e.g., http, pubsub):"
read TRIGGER_TYPE
if [ "$TRIGGER_TYPE" == "http" ]; then
    gcloud functions deploy $FUNCTION_NAME --runtime=$RUNTIME --trigger-http --source=$SOURCE_PATH
elif [ "$TRIGGER_TYPE" == "pubsub" ]; then  
    echo "Please enter the name of the Pub/Sub topic to trigger the function:"
    read TOPIC_NAME
    gcloud functions deploy $FUNCTION_NAME --runtime=$RUNTIME --trigger-topic=$TOPIC_NAME --source=$SOURCE_PATH
else
    echo "Unsupported trigger type. Please use 'http' or 'pubsub'."
    exit 1
fi
