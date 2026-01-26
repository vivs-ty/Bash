#!/bin/bash

# Create the script with the shebang and the print command
echo -e "#!/bin/bash\necho 'Script executed!'" > my_script.sh

# Make the script executable
chmod +x my_script.sh

# Run the script using the relative path
./my_script.sh