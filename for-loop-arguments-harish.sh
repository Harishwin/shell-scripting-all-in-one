#!/bin/bash

<<cmt
we can create multiple task using for loop at same time
for example we want create multiple folders. use following syntax
FOR EXECUTE ON BASH = ./file-name name-folder-u-want-to-create 1 30
for deleting same multiple folders at same time use : rm -r folder-name*
cmt

for ((i=$2; i<=$3; i++))
do
    mkdir "$1$i"
done

