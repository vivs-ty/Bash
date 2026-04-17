# 111. Set an environment variable temporarily in the current shell.


#!/bin/bash

# NOTE: For this to affect your current terminal, you MUST run this script 
# using 'source script.sh', NOT './script.sh'.

echo "Setting environment variable TEMP_VAR to 'Hello, World!' temporarily."
export TEMP_VAR="Hello, World!"
echo "TEMP_VAR is set to: $TEMP_VAR"
echo "If you ran this using './', the variable will disappear when the script ends."
echo "If you ran this using 'source', it is now available in your terminal."