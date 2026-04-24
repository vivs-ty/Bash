# 187. Securely pass API keys or tokens using environment variables or other secure methods with `curl`.

#!/bin/bash


echo "Fetching data from the API using a securely stored API key..."
# Ensure the API_KEY environment variable is set
if [ -z "$API_KEY" ]; then
    echo "Error: API_KEY environment variable is not set."
    exit 1
fi
