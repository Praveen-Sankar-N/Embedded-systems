<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation

#!/bin/bash

read -p "Enter the numbers to addition: "  `echo -e "\n"` num1 num2


addition=`echo "$num1+$num2" | bc`

echo Answer is $addition

