#!/bin/bash

# Assign values to variables
a=10
b=20

# Check if a is greater than b
# NOTE: use -gt for numeric comparison (not > which is for strings)
if [ $a -gt $b ]
then
    # If condition is true
    echo "a is greater than b"
elif [ $b -gt $a ]
then
    # If condition is true
    echo "b is greater than a"
else
    # If condition is false
    echo "a and b are equal"
fi
#fi is the end keyword for an if statement in bash scripting.
