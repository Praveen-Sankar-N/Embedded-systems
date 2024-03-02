<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p "Enter a number: " num
if [ $num -gt 30 -a $num -le 40 ]
then

    echo "The entered number $num  is between 30 and 40"

else
    echo "The entered number $num  is not between 30 and 40"

fi
