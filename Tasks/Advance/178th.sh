# 178. Use `dig` or `nslookup` to query DNS records.

#!/bin/bash

read -r -p "Enter the domain name to query: " domain

if command -v dig &> /dev/null; then
    echo "Using 'dig' to query DNS records for $domain:"
    echo "-------------------------------------------"
    dig "$domain" +short
elif command -v nslookup &> /dev/null; then
    echo "Using 'nslookup' to query DNS records for $domain:"
    echo "------------------------------------------------"
    nslookup "$domain"
else
    echo "Error: Neither 'dig' nor 'nslookup' is installed on this system."
    exit 1
fi
