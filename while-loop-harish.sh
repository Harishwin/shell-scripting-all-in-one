#!/bin/bash
<<cmt
if you want to print something using while loop you can use following script
it just for learning 'while loop'
to execute this loop use bash file-name.sh
it print 0 to 5 
cmt

i=0
while [[ $i -le 5 ]]
do
    echo "harish"
    i=$((i+1))
done

