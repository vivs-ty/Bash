
#!/bin/bash
# Library: String Manipulation

str_to_lower() {
    echo "$1" | tr '[:upper:]' '[:lower:]'
}

str_to_upper() {
    echo "$1" | tr '[:lower:]' '[:upper:]'
}

str_trim() {
    echo "$1" | xargs
}
