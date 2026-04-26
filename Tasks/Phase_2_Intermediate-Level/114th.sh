# 114. Add a directory to the `PATH` environment variable permanently.

#!/bin/bash

echo "Adding /usr/local/bin to the PATH environment variable permanently."
read -r -p "Do you want to add this to your ~/.bashrc? (y/n): " confirm

if [[ "$confirm" == "y" ]]; then
# We use single quotes to prevent $PATH from evaluating immediately
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bashrc
echo "Added to ~/.bashrc."
echo "Run 'source ~/.bashrc' to apply the change to your current session."
else
echo "Operation cancelled."
fi
