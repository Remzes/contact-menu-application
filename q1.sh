#!/bin/bash
echo -n "Enter the first string: "
read string1
echo -n "Enter the second string: "
read string2
if [ "$string1" == "$string2" ]
then
    echo "Strings equal each others"
else
    echo "Strings do not equal each others"
fi
