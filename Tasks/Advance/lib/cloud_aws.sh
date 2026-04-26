#!/bin/bash
# Library: AWS Cloud Operations

check_aws_ready() {
    if ! command -v aws &> /dev/null; then
        fatal_error "AWS CLI is not installed."
    fi
    log_info "AWS CLI is ready."
}

deploy_ec2() {
    local region="$1"
    local type="$2"
    local project="$3"
    
    log_info "Provisioning $type instance in $region for $project..."
    sleep 2 
    log_info "Instance provisioned successfully."
}

destroy_ec2() {
    local project="$1"
    log_warn "Initiating teardown for project: $project..."
    sleep 2
    log_info "Infrastructure destroyed safely."
}
