#!/bin/bash

<<cmt
In condition script use "check" as user answer run time 
cmt

read -p "Is Harish a DevOps engineer? " check
if [[ $ok == "harish" ]]; then
    echo "check, he is team lead."
else
    echo "yes, Harish is DevOps Engineer."
fi

