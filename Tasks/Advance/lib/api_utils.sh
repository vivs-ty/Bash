#!/bin/bash
# Library: API Interactions

api_get() {
    local url="$1"
    curl -s -X GET "$url"
}

api_post() {
    local url="$1"
    local payload="$2"
    curl -s -X POST -H "Content-Type: application/json" -d "$payload" "$url"
}
