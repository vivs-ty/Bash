# 119. Use `.env` files and `source` them in a script.

#!/bin/bash
echo "Loading environment variables from .env file..."
if [ -f .env ]; then
    source .env
    echo "Environment variables loaded:"
    env | grep -E '^(VAR1|VAR2|VAR3)='
else
    echo ".env file not found!"
fi
