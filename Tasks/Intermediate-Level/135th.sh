# 135. Write a script that uses a configuration file to define settings.

#!/bin/bash

CONFIG_FILE="config.conf"

create_sample_config() {
    cat > "$CONFIG_FILE" << 'EOF'
# Configuration file for server management script
REGION=us-east-1
ENVIRONMENT=production
BACKUP_ENABLED=true
MAX_RETRIES=3
LOG_LEVEL=INFO
SERVER_COUNT=5
NOTIFICATION_EMAIL=admin@example.com
EOF
}

load_config() {
    if [ ! -f "$CONFIG_FILE" ]; then
        echo "Config file not found. Creating sample config..."
        create_sample_config
    fi
    
    echo "Loading configuration from $CONFIG_FILE..."
    echo
    
    source "$CONFIG_FILE"
    
    echo "Configuration loaded:"
    echo "  Region: $REGION"
    echo "  Environment: $ENVIRONMENT"
    echo "  Backup Enabled: $BACKUP_ENABLED"
    echo "  Max Retries: $MAX_RETRIES"
    echo "  Log Level: $LOG_LEVEL"
    echo "  Server Count: $SERVER_COUNT"
    echo "  Notification Email: $NOTIFICATION_EMAIL"
}

apply_settings() {
    echo
    echo "Applying settings..."
    
    if [ "$BACKUP_ENABLED" = "true" ]; then
        echo "  - Backup is enabled"
    fi
    
    echo "  - Connecting to region: $REGION"
    echo "  - Environment: $ENVIRONMENT"
    echo "  - Log level set to: $LOG_LEVEL"
}

load_config
apply_settings

echo
echo "Configuration successfully applied!"