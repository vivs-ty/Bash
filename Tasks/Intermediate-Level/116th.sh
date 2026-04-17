# 116. Define a custom function in your `.bashrc` or `.bash_profile`.

#!/bin/bash
echo "Defining a custom function 'greet' in the current shell session."
echo "The 'greet' function will take a name as an argument and print a greeting message."
greet() {
    local name="$1"
    echo "Hello, $name! Welcome to the world of Bash scripting!"
}
echo "You can now use the 'greet' function by typing: greet YourName"
echo "This function will only be available in this shell session. To make it permanent, add it to your .bashrc or .bash_profile file."
