#!/bin/bash
array=("usingfile1" "usingfile2")
let a=1;
for i in ${!array[*]}
do
    echo "this is ${array[$i]}"
    mv "${array[$i]}" "file$a"
    echo "now it is file$a"
    ((a++))
done
