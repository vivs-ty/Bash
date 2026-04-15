# 136. Parse command-line options using getopts.

#!/bin/bash

usage() {
    echo "Usage: $0 [-h] [-v] [-n name] [-p port] [-r region]"
    echo "  -h         Display this help message"
    echo "  -v         Enable verbose mode"
    echo "  -n name    Specify server name"
    echo "  -p port    Specify port number (default: 80)"
    echo "  -r region  Specify AWS region (default: us-east-1)"
    exit 1
}

SERVER_NAME=""
PORT=80
REGION="us-east-1"
VERBOSE=0

while getopts "hvn:p:r:" opt; do
    case $opt in
        h)
            usage
            ;;
        v)
            VERBOSE=1
            echo "Verbose mode enabled"
            ;;
        n)
            SERVER_NAME="$OPTARG"
            echo "Server name: $SERVER_NAME"
            ;;
        p)
            PORT="$OPTARG"
            if ! [[ "$PORT" =~ ^[0-9]+$ ]] || [ "$PORT" -lt 1 ] || [ "$PORT" -gt 65535 ]; then
                echo "Error: Invalid port number"
                exit 1
            fi
            echo "Port: $PORT"
            ;;
        r)
            REGION="$OPTARG"
            echo "Region: $REGION"
            ;;
        ?)
            echo "Invalid option: -$OPTARG" >&2
            usage
            ;;
    esac
done

shift $((OPTIND -1))

echo
echo "=== Final Configuration ==="
echo "Server Name: ${SERVER_NAME:-not set}"
echo "Port: $PORT"
echo "Region: $REGION"
echo "Verbose: $VERBOSE"

if [ $VERBOSE -eq 1 ]; then
    echo
    echo "Additional arguments: $@"
fi