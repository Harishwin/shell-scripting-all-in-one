# Shell Scripting All-in-One

Welcome to the Shell Scripting All-in-One repository! This collection of shell scripts serves various purposes, from automating deployment tasks to demonstrating fundamental scripting concepts.

## Table of Contents

1. [Introduction](#introduction)
2. [Scripts Overview](#scripts-overview)
3. [Usage](#usage)

## Introduction

Shell scripting is a powerful tool used in software development and system administration. It allows for the automation of tasks, making processes more efficient and reliable. In this repository, you'll find a range of shell scripts designed to tackle different scenarios, whether it's deploying applications, managing users, or performing system diagnostics.

## Scripts Overview

Here's a brief overview of each script in this repository:

### 1. [app-deployment-errors-fault-diagnostic-harish.sh](https://github.com/Harishwin/shell-scripting-all-in-one/blob/main/app-deployment-errors-fault-diagnostic-harish.sh)

This script automates the deployment of a Django-based application using shell commands. It also includes error and fault diagnostic routines to assist with troubleshooting.
let's break down the script into its components:

1. **Shebang (`#!/bin/bash`):** This line at the beginning of the script specifies the interpreter to be used, which is Bash in this case.

2. **Comment Block (`<<cmt ... cmt`):** This block contains descriptive comments explaining the purpose of the script, such as its functionality and how to use it.

3. **Functions:**
   - **`clone_code()`:** Clones the Django-based application from a GitHub repository.
   - **`install_requirements()`:** Installs necessary dependencies for the application using `apt-get`.
   - **`require_restart()`:** Performs operations to ensure proper setup for Docker and Nginx services.
   - **`deploy()`:** Builds and deploys the Docker container for the application, exposing it on port 8000.

4. **Deployment Start Message:** A message indicating the start of the deployment process is echoed.

5. **Error Handling:**
   - Checks if the code directory already exists. If it does, it prints a message and changes the directory to the existing one.
   - Verifies the successful installation of requirements and restart of services. If any of these steps fail, it prints an error message and exits the script.
   - If deployment fails, it prints a message indicating the failure and suggests checking the admin.

6. **Deployment End Message:** A message indicating the end of the deployment process is echoed.

Overall, the script automates the deployment process of a Django-based application by handling cloning, dependency installation, service setup, Docker container creation, and error handling.

### 2. [arguments-harish.sh](https://github.com/Harishwin/shell-scripting-all-in-one/blob/main/arguments-harish.sh)

Demonstrates how to handle command-line arguments within a shell script, providing a basic template for processing user input.
 let's break down the script:

1. **Shebang (`#!/bin/bash`):** This line at the beginning of the script specifies the interpreter to be used, which is Bash in this case.

2. **Comment Block (`<<COMMENT ... COMMENT`):** This block contains descriptive comments explaining the purpose of the script and how to use it.

3. **Script Description:**
   - Explains the purpose of the script and its functionality, including:
     - The interpreter used (`#!/bin/bash`).
     - Usage of `$#` to represent the number of arguments passed to the script.
     - Usage of `"$@"` to represent all the arguments passed to the script.
     - Checks if no arguments are provided and prints a usage message if that's the case.
     - Loops through each argument and prints them out one by one.
     - Instructions on how to save the script to a file, make it executable, and run it with various arguments.

4. **Argument Checking:**
   - Checks if no arguments are provided (`$# -eq 0`), and if so, prints a usage message and exits the script.

5. **Argument Printing:**
   - If arguments are provided, it prints a message indicating the number of arguments provided.
   - Loops through each argument (`"$@"`) and prints them out one by one.

Overall, this script serves as a template for processing command-line arguments in a Bash script. It explains the usage and functionality of the script and provides instructions on how to use it effectively.

### 3. [conditions-harish.sh](https://github.com/Harishwin/shell-scripting-all-in-one/blob/main/conditions-harish.sh)

Illustrates the use of conditional statements in shell scripting by prompting the user for input and branching based on their response.
Script Description:

Explains the purpose of the script and how to use it.
Mentions that the script prompts the user with a question and checks the response.
User Input:

Uses the read command to prompt the user with a question: "Is Harish a DevOps engineer?"
Stores the user's response in the variable check.
Conditional Check:

Checks if the user's response (stored in check) is equal to "harish" using the [[ ... ]] construct.
If the condition is true ($ok == "harish"), it prints "check, he is team lead."
If the condition is false, it prints "yes, Harish is DevOps Engineer."

### 4. [create_ec2.sh](https://github.com/Harishwin/shell-scripting-all-in-one/blob/main/create_ec2.sh)

Automates the creation of an EC2 instance on AWS using the AWS CLI. It ensures the AWS CLI is installed and then proceeds to create the instance.
This script is a Bash script that automates the process of creating an EC2 instance on AWS (Amazon Web Services). Let's break it down into its components:

1. **Shebang (`#!/bin/bash`):** This line at the beginning of the script specifies the interpreter to be used, which is Bash in this case.

2. **Set Options (`set -euo pipefail`):** This line configures the shell to exit immediately if any command fails (`-e`), treats unset variables as an error when substituting (`-u`), and ensures that if any component of a pipeline fails, the entire pipeline fails (`-o pipefail`).

3. **Functions:**
   - **`check_awscli()`:** Checks if the AWS CLI (Command Line Interface) is installed. If not, it prompts the user to install it.
   - **`install_awscli()`:** Installs AWS CLI version 2 on Linux by downloading the installation package, installing necessary dependencies, and verifying the installation.
   - **`wait_for_instance()`:** Waits for the newly created EC2 instance to be in the running state before proceeding.

4. **Main Function (`main()`):**
   - Calls the `check_awscli` function. If AWS CLI is not installed, it calls `install_awscli` to install it.
   - Specifies the parameters required for creating the EC2 instance, such as AMI ID, instance type, key name, subnet ID, security group IDs, and instance name.
   - Calls the `create_ec2_instance` function with the specified parameters to create the EC2 instance.
   - Prints a message indicating that the EC2 instance creation process is completed.

5. **Usage of AWS CLI Commands:**
   - Utilizes AWS CLI commands to interact with AWS services such as EC2.
   - Uses commands like `aws ec2 describe-instances` and `aws ec2 run-instances` to check the instance state and create new instances, respectively.

6. **Variable Usage:**
   - The script utilizes variables to store parameters such as AMI ID, instance type, etc., making it easier to modify these values as needed.

Overall, this script provides a convenient way to automate the creation of EC2 instances on AWS using Bash scripting and the AWS CLI.

### 5. [for-loop-arguments-harish.sh](https://github.com/Harishwin/shell-scripting-all-in-one/blob/main/for-loop-arguments-harish.sh)

Utilizes a `for` loop to perform repetitive tasks, such as creating multiple folders. It showcases how to handle iteration and parameterization in shell scripts.
This script demonstrates how to create multiple folders using a Bash script and a for loop. Let's break it down:

1. **Shebang (`#!/bin/bash`):** Specifies the interpreter to be used, which is Bash in this case.

2. **Here Document (`<<cmt ... cmt`):** This block is a comment section enclosed within `<<cmt` and `cmt`. It's a way to provide multi-line comments in Bash scripts.

3. **Comment Explanation:**
   - Explains the purpose of the script, which is to create multiple folders simultaneously using a for loop.
   - Provides an example syntax for executing the script and creating multiple folders (`./file-name name-folder-u-want-to-create 1 30`).
   - Mentions a command for deleting multiple folders at once (`rm -r folder-name*`).

4. **For Loop:**
   - Uses a for loop to iterate over a range of numbers specified by the second and third arguments passed to the script (`$2` and `$3`).
   - Inside the loop, it creates a folder with a name constructed by appending the current number to the folder name specified as the first argument (`$1`) followed by the current value of the loop counter.

5. **Variable Usage:**
   - `$1`: Represents the first argument passed to the script, which is the base name of the folders to be created.
   - `$2` and `$3`: Represent the second and third arguments passed to the script, specifying the range of numbers for folder creation.

Overall, this script provides a convenient way to create multiple folders with sequential names using a Bash script and a for loop.

### 6. [intro-shell-scripting-harish.sh](https://github.com/Harishwin/shell-scripting-all-in-one/blob/main/intro-shell-scripting-harish.sh)

Provides an introductory overview of shell scripting, highlighting its significance in software development and DevOps practices.
This Bash script provides an introduction to shell scripting and highlights its significance in the context of software development and operations. Let's break it down:

1. **Shebang (`#!/bin/bash`):** Specifies the interpreter to be used, which is Bash in this case.

2. **Echo Statements:**
   - The script starts with an `echo` statement that outputs a message describing shell scripting.
   - It emphasizes the power of shell scripting in software development and operations, explaining that it involves writing a series of commands for execution in a Unix/Linux shell environment.

3. **Description:**
   - The script elaborates on shell scripting as a series of commands stored in text files executed by the shell interpreter.
   - It mentions the classification of shell scripts based on the shell interpreter used, including Bash, Zsh, Korn, etc.

4. **DevOps Relevance:**
   - The script highlights the crucial role of shell scripting in DevOps practices.
   - It explains how DevOps practitioners use shell scripts to automate various tasks throughout the software development lifecycle, such as deployment, server configuration, infrastructure management, and system maintenance.
   - The use of shell scripting in DevOps workflows is shown to enhance efficiency, consistency, and reliability, leading to faster software delivery and improved quality.

Overall, this script provides a concise overview of shell scripting and its importance in DevOps, emphasizing its role in automating tasks and streamlining operations for software development and deployment.

### 7. [user-adding-harish.sh](https://github.com/Harishwin/shell-scripting-all-in-one/blob/main/user-adding-harish.sh)

Prompts the user to input a username and adds a new user to the system using the `useradd` command. It demonstrates user interaction and system administration tasks in shell scripts.
This Bash script prompts the user to enter a username, creates a new user with the provided username using the `useradd` command with the `-m` option to create the user's home directory, and then confirms the successful addition of the new user. Let's break it down:

1. **Shebang (`#!/bin/bash`):** Specifies the interpreter to be used, which is Bash in this case.

2. **`read` Command:**
   - Prompts the user to enter a username using the `-p` option.
   - Stores the inputted username in the variable `username`.

3. **Echo Statement:**
   - Outputs a message displaying the new username using the `echo` command.

4. **`sudo useradd` Command:**
   - Creates a new user with the username provided by the user.
   - The `-m` option ensures that a home directory is created for the new user.
   - Uses `sudo` to execute the command with root privileges.

5. **Echo Statement:**
   - Confirms the successful addition of the new user using the `echo` command.

This script enables the automated creation of new user accounts on a Unix/Linux system, streamlining the user management process.

### 8. [variables-harish.sh](https://github.com/Harishwin/shell-scripting-all-in-one/blob/main/variables-harish.sh)

Demonstrates variable usage in shell scripts, covering declaration, assignment, and utilization in commands. It showcases how to store and manipulate data within scripts.
This Bash script demonstrates the usage of variables in shell scripting. Here's what each part does:

1. **Echo Statements:**
   - Output explanations about variables in shell scripts and provide examples of variable declaration and assignment.

2. **Variable Declaration and Assignment:**
   - Assigns the value "Harish" to the variable `name` using the syntax `name="Harish"`. This creates a variable named `name` with the value "Harish".

3. **Accessing Variables:**
   - Retrieves the value of the `name` variable using the syntax `$name` and prints it to the console.

4. **Concatenating Variables and Strings:**
   - Concatenates the value of the `name` variable with the string "Hello, " to form the greeting message, and stores it in the `greeting` variable.

5. **Using Variables in Commands:**
   - Utilizes the value of the `file_name` variable to create a new file using the `touch` command. The `touch` command creates a new file with the specified filename.

This script illustrates how variables can be declared, assigned, accessed, and used in shell scripts, allowing for dynamic and flexible script behavior.

### 9. [while-loop-harish.sh](https://github.com/Harishwin/shell-scripting-all-in-one/blob/main/while-loop-harish.sh)

Uses a `while` loop to iterate and perform a task repeatedly, exemplifying the control flow constructs available in shell scripting.
This Bash script demonstrates the usage of a while loop to print a message multiple times. Here's what each part does:

1. **Echo Statement:**
   - Provides an explanation of the purpose of the script and how to execute it.

2. **While Loop:**
   - Initializes a variable `i` with the value `0`.
   - Enters a while loop that continues as long as the value of `i` is less than or equal to `5`.
   - Inside the loop, it prints the message "harish".
   - Increments the value of `i` by 1 in each iteration.

This loop will print the message "harish" 6 times, from 0 to 5, as it increments the value of `i` in each iteration until it reaches 6.
## Usage

To run any of the scripts, follow these steps:

1. Clone the repository to your local machine:

    ```bash
    git clone https://github.com/Harishwin/shell-scripting-all-in-one.git
    ```

2. Navigate to the repository directory:

    ```bash
    cd shell-scripting-all-in-one
    ```

3. Execute the desired script using Bash:

    ```bash
    ./script_name.sh
    ```
### Credits
Special thanks to [Shubham Londhe](https://github.com/LondheShubham153) for the valuable contributions and inspiration for this Topic.


## Contributing

Contributions to this repository are welcome! Feel free to submit bug fixes, enhancements, or new scripts via pull requests. Please adhere to the repository's coding standards and guidelines.


---

We hope you find these scripts useful! If you have any questions or suggestions, don't hesitate to reach out.

