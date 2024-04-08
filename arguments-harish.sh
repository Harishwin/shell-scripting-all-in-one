#!/bin/bash

<<COMMENT
In this script:

- #!/bin/bash specifies the interpreter to be used, which is Bash in this case.
- $# represents the number of arguments passed to the script.
- "$@" represents all the arguments passed to the script.
- The script checks if no arguments are provided and prints a usage message if that's the case.
- It then loops through each argument and prints them out one by one.
- You can save this script to a file (e.g., argument_script.sh), make it executable (chmod +x argument_script.sh), and then run it with various arguments (./argument_script.sh arg1 arg2 arg3).
COMMENT

# Check if no arguments are provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <arg1> <arg2> ..."
    exit 1
fi

# Loop through each argument
echo "You provided $# arguments:"
for arg in "$@"; do
    echo "$arg"
done

