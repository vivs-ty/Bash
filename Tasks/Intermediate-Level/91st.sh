# 91. List all running processes owned by a specific user.

#!/bin/bash

echo "Enter the username:"
read username
echo "Listing all running processes owned by $username..."
ps -u $username
echo "All running processes owned by $username are listed above."