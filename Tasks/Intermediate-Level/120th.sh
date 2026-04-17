# 120. Write a script to switch between different sets of environment variables.

#!/bin/bash

# NOTE: For this to change your working terminal, run with 'source script.sh'.
echo "Select the environment you want to switch to:"
echo "1) Development"
echo "2) Testing"
echo "3) Production"
read -r -p "Enter your choice (1-3): " choice

case $choice in
1)
export ENVIRONMENT="Development"
export DB_HOST="localhost"
export DB_USER="dev_user"
echo "Switched to Development environment."
;;
2)
export ENVIRONMENT="Testing"
export DB_HOST="test-db.example.com"
export DB_USER="test_user"
echo "Switched to Testing environment."
;;
3)
export ENVIRONMENT="Production"
export DB_HOST="prod-db.example.com"
export DB_USER="prod_user"
echo "Switched to Production environment."
;;
*)
echo "Invalid choice. Please select a valid environment."
;;
esac
