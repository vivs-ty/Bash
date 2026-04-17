# 115. Create an alias for a frequently used command.

#!/bin/bash
echo "Creating an alias 'll' for 'ls -la'."
alias ll='ls -la'
echo "You can now use 'll' to list files in long format with hidden files included."
echo "To make this alias permanent, add the following line to your ~/.bashrc or ~/.bash_profile:"
echo "alias ll='ls -la'"    