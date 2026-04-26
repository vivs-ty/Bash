# 116. Define a custom function in your `.bashrc` or `.bash_profile`.

#!/bin/bash

# NOTE: For this to affect your current terminal, you MUST run this script
# using 'source script.sh'.
echo "Defining a custom function 'greet' in the current shell session."

greet() {
local name="$1"
if [ -z "$name" ]; then
echo "Usage: greet <name>"
else
echo "Hello, $name! Welcome to the world of Bash scripting!"
fi
}

echo "Function 'greet' loaded. Test it by typing: greet YourName"