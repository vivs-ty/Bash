# 196. Use `set -o pipefail` to ensure that a script exits if any command in a pipeline fails.

#!/bin/bash


echo "This script demonstrates the use of 'set -o pipefail' to ensure that it exits if any command in a pipeline fails."
# Enable pipefail option
set -o pipefail
# Example pipeline with a command that fails
echo "This is a successful command." | grep "successful"
echo "This is a failing command." | grep "failing"
echo "This command will not be executed due to pipefail."
echo "This is a normal message that will not be shown if the previous command fails."
