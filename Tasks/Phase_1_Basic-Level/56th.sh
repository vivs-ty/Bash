# 56. Add the shebang line `#!/bin/bash` to `my_script.sh`.

#!/bin/bash

# Add shebang line at the top of my_script.sh
sed -i '1i #!/bin/bash' my_script.sh

echo "Shebang line added to my_script.sh"
