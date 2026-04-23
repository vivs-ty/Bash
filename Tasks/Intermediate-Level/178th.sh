# 178. Use `dig` or `nslookup` to query DNS records.

#!/bin/bash

echo "Enter the domain name to query:"
read domain
if command -v dig &> /dev/null; then
    echo "Using dig to query DNS records for $domain:"
    dig "$domain" +noall +answer
elif command -v nslookup &> /dev/null; then
    echo "Using nslookup to query DNS records for $domain:"
    nslookup "$domain"
else
    echo "Neither dig nor nslookup is available on this system."
    exit 1
fi
