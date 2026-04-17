# 112. Set an environment variable permanently for the current user.

#!/bin/bash

echo "We will set PERM_VAR permanently by adding it to ~/.bashrc"
read -r -p "Do you want to proceed? (y/n): " confirm

if [[ "$confirm" == "y" ]]; then
echo "export PERM_VAR='Hello, World!'" >> ~/.bashrc
echo "Added to ~/.bashrc."
echo "Run 'source ~/.bashrc' to apply the change immediately, or restart your terminal."
else
echo "Operation cancelled."
fi

