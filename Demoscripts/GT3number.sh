#!/bin/bash

read -p "ENter 3 numbers : " num1 num2 num3 

if [ $(expr $num1 \> $num2) -eq 1 ]
then
    if [ $(expr $num1 \> $num3) -eq 1 ]
    then

        echo "The number $num1 is greatest among three numbers"

    else
        echo "The number $num3 is greatest among three numbers"
    fi
elif [ $(expr $num2 \> $num3) -eq 1 ]
then
        echo "The number $num2 is greatest among three numbers"
else
        echo "The number $num3 is greatest among three numbers"
fi


