# 115. Create an alias for a frequently used command.

#!/bin/bash

# NOTE: For this to affect your current terminal, you MUST run this script 
# using 'source script.sh'.

echo "Creating an alias 'll' for 'ls -la'."
alias ll='ls -la'
echo "Alias created. If you ran this with 'source', you can now type 'll'."

read -r -p "Do you want to make this permanent in ~/.bashrc? (y/n): " confirm
if [[ "$confirm" == "y" ]]; then
    echo "alias ll='ls -la'" >> ~/.bashrc
    echo "Saved to ~/.bashrc."
fi
