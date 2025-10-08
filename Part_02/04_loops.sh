#!/bin/bash

#This file is for loops or iterations in bash scripting
# For loop

# --------------------- #

echo "Simple for loop"
for i in 1 2 3 4 5
do 
    echo "Number : $i"
done

# --------------------- #

echo "for loop in Range"
for i in {1..5}
do
    echo "Range : $i"
done

# --------------------- #
 
echo "C-style for loop"
for ((i=1; i<6; i++))
do 
    echo "C-style : $i"
done


# --------------------- #
# While loop

echo "While loop in bash"
count=1
while [ $count -le 5 ]
do
    echo "Count : $count"
    ((count++))
done


# --------------------- #
# until loop

echo "Until loop in bash"
num=1
until [ $num -gt 5 ]
do
    echo "Num : $num"
    ((num++))
done