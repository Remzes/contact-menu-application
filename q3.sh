#!/bin/bash
if [ -n "$1" ]
   then
    let volume=$1**3
    echo "The volume of the cube is $volume"
   else
       echo "Input is empty. Please enter a side"
       echo "of cube like a command-line argument"
fi
