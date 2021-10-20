#!/bin/bash

mapfile -t myArray < sprint.md
while IFS= read -r line;
do
    # echo ">>$line<<";
    echo $line | grep -P '[A-Z]{2,}-\d+' -o
done < sprint.md