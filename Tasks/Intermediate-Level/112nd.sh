# 112. Set an environment variable permanently for the current user.

#!/bin/bash
echo "Setting environment variable PERM_VAR to 'Hello, World!' permanently."
echo " use export command to set the variable in the current shell session."
export PERM_VAR="Hello, World!"
echo "PERM_VAR is set to: $PERM_VAR"
echo "This variable will be available in future shell sessions."
echo "To make this change permanent, add the following line to your ~/.bashrc or ~/.bash_profile:"
echo "export PERM_VAR='Hello, World!'"

