# 96. Write a script to automatically restart a failed service.

#!/bin/bash

echo "Enter the name of the service you want to monitor:"
read service_name
while true; do
    if ! systemctl is-active --quiet $service_name; then
        echo "Service $service_name has failed. Restarting..."
        systemctl restart $service_name
        if [ $? -eq 0 ]; then
            echo "Service $service_name restarted successfully."
        else
            echo "Failed to restart service $service_name. Please check the service status and logs for more details."
        fi
    else
        echo "Service $service_name is running normally."
    fi
    sleep 60 # Check every 60 seconds
done
