#!/bin/bash

echo "Variables in shell scripts are declared by assigning a value to a name."
echo "For example:"
echo "my_variable='Hello, World!'"
echo "This assigns the string 'Hello, World!' to the variable named 'my_variable'."

# Declare a variable
name="Harish"

# Access the variable
echo "The value of name is: $name"

# You can also concatenate variables and strings
greeting="Hello, $name!"
echo $greeting

# Using variables in commands
file_name="example.txt"
touch $file_name
echo "Created file: $file_name"

