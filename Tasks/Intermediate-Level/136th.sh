# 136. Parse command-line options using getopts.

#!/bin/bash

usage() {
    echo "Usage: $0 [-h] [-v] [-n name] [-p port] [-r region]"
    echo "  -h         Display this instructional help message."
    echo "  -v         Enable verbose logging mode."
    echo "  -n name    Specify the target server name."
    echo "  -p port    Specify the network port number (Default: 80)."
    echo "  -r region  Specify the target AWS region (Default: us-east-1)."
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
            echo "Verbose mode has been enabled."
            ;;
        n)
            SERVER_NAME="$OPTARG"
            echo "Server name set to: $SERVER_NAME"
            ;;
        p)
            PORT="$OPTARG"
            if ! [[ "$PORT" =~ ^[0-9]+$ ]] || [ "$PORT" -lt 1 ] || [ "$PORT" -gt 65535 ]; then
                echo "Error: The provided port number is invalid."
                exit 1
            fi
            echo "Port number set to: $PORT"
            ;;
        r)
            REGION="$OPTARG"
            echo "Region set to: $REGION"
            ;;
        ?)
            echo "Error: Invalid option provided (-$OPTARG)." >&2
            usage
            ;;
    esac
done

shift $((OPTIND -1))

echo
echo "=== Final Deployment Configuration ==="
echo "Server Name: ${SERVER_NAME:-[Not Configured]}"
echo "Port: $PORT"
echo "Region: $REGION"
echo "Verbose Mode: $VERBOSE"

if [ $VERBOSE -eq 1 ] && [ $# -gt 0 ]; then
    echo
    echo "Additional arguments detected: $*"
fi
