# 70. Write a script that creates a user account (you might need `sudo` for this, be cautious).

#!/bin/bash

echo "Enter the username for the new account:"
read -r username

# Create the new user account
sudo useradd "$username"

# Set a password for the new user
echo "Enter the password for the new account:"
sudo passwd "$username"
echo "User account $username has been created."
