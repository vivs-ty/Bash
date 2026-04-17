# 117. Understand the order in which Bash profile files are loaded.

#!/bin/bash

echo "Bash Profile Loading Order:"
echo "---------------------------"
echo "1. /etc/profile: Executed for login shells. System-wide environment."
echo "2. ~/.bash_profile (or ~/.bash_login or ~/.profile): Executed for login shells. User-specific."
echo "3. ~/.bashrc: Executed for non-login interactive shells (like opening a new terminal tab)."
echo "4. /etc/bash.bashrc: System-wide configurations for non-login shells."
echo ""
echo "Best Practice: Put PATH exports in ~/.bash_profile, and aliases/functions in ~/.bashrc."
