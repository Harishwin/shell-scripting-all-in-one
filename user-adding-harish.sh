#!/bin/bash


read -p "Enter user name: " username
echo "New Username: $username"

sudo useradd -m $username
echo "New user added successfully"


