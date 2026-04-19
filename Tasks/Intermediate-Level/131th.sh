# 131. Create a script that logs errors to a separate log file.

#!/bin/bash

echo "This is a sample script that demonstrates error logging." >&2
echo "This is an error message that will be logged." >&2
echo "This is another error message that will be logged." >&2
echo "This is a normal message that will not be logged."
# Redirect standard error to a log file
exec 2>>error.log
echo "This is an error message that will be logged to the file." >&2
echo "This is another error message that will be logged to the file." >&2
echo "This is a normal message that will not be logged to the file."
