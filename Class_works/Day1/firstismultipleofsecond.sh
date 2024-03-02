<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

echo "the program to find whether the 1st number is multiple of 2nd number or not"
read -p "enter 1st number " num1
read -p "Enter 2nd number " num2

if [ $(($num1%$num2)) -eq 0 ]
then

    echo "The 1st number $num1 is a multiple of 2nd number $num2"

else

    echo "The 1st number $num1 is not a multiple of 2nd number $num2"

fi

