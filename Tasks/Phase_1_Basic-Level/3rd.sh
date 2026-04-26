# 3. Display the username of the current user.

#!/bin/bash
echo "Current user: $USER"
echo "Username: $(whoami)"
echo "User ID: $(id -un)"
echo "User Name: $(id -u -n)"
