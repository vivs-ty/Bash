# 111. Set an environment variable temporarily in the current shell.


#!/bin/bash
echo "Setting environment variable TEMP_VAR to 'Hello, World!' temporarily."
echo " use export command to set the variable in the current shell session."
export TEMP_VAR="Hello, World!"
echo "TEMP_VAR is set to: $TEMP_VAR"
echo "This variable will only be available in this shell session."