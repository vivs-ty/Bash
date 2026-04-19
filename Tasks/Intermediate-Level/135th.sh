#!/bin/bash

CONFIG_FILE="config.conf"

create_sample_config() {
    cat > "$CONFIG_FILE" << 'EOF'
# Configuration file for the server management script
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
        echo "Configuration file not found. Generating a default configuration..."
        create_sample_config
    fi
    
    echo "Reading configuration parameters from $CONFIG_FILE..."
    echo
    
    source "$CONFIG_FILE"
    
    echo "Configuration loaded successfully:"
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
    echo "Applying the specified settings..."
    
    if [ "$BACKUP_ENABLED" = "true" ]; then
        echo "  - Automated backups are enabled."
    fi
    
    echo "  - Establishing connection to region: $REGION"
    echo "  - Current environment defined as: $ENVIRONMENT"
    echo "  - Logging verbosity set to: $LOG_LEVEL"
}

load_config
apply_settings

echo
echo "All configuration settings have been successfully applied."
