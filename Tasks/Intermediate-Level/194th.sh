# 194. Use conditional debugging output based on a script argument or environment variable.

#!/bin/bash


echo "This script demonstrates conditional debugging output as follows:"
if [[ "$1" == "-d" ]] || [[ "${DEBUG:-0}" == "1" ]]; then
    echo "Debugging mode is ON. Detailed output will be shown."
    # Add detailed debugging output here
else
    echo "Debugging mode is OFF. Running with normal output."
    # Add normal output here
fi
echo "This is a normal message that will always be shown."