# 117. Understand the order in which Bash profile files are loaded.

#!/bin/bash
echo "When you start a new terminal session, Bash reads and executes commands from specific files in a particular order. The order is as follows:"
echo "1. /etc/profile: This file is executed for login shells. It sets up system-wide environment variables and configurations."
echo "2. ~/.bash_profile: This file is executed for login shells. It is typically used to set user-specific environment variables and configurations. If this file does not exist, Bash will look for ~/.bash_login and then ~/.profile."
echo "3. ~/.bash_login: This file is executed for login shells if ~/.bash_profile does not exist. It is less commonly used than ~/.bash_profile."
echo "4. ~/.profile: This file is executed for login shells if neither ~/.bash_profile nor ~/.bash_login exists. It is a general-purpose profile file that can be used for various shell configurations."
echo "5. ~/.bashrc: This file is executed for non-login interactive shells. It is typically used to set up aliases, functions, and other interactive shell configurations. If you want to ensure that ~/.bashrc is executed for login shells as well, you can add the following line to your ~/.bash_profile: 'if [ -f ~/.bashrc ]; then source ~/.bashrc; fi'"
echo "6. /etc/bash.bashrc: This file is executed for non-login interactive shells. It is a system-wide configuration file for interactive shells. It is typically used to set up system-wide aliases and functions for interactive shells."
echo "In summary, the order of loading is: /etc/profile -> ~/.bash_profile (or ~/.bash_login or ~/.profile) -> ~/.bashrc (for non-login shells) -> /etc/bash.bashrc (for non-login shells). Understanding this order is crucial for properly configuring your shell environment and ensuring that your desired settings are applied in the correct contexts."
