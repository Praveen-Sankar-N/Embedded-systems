<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p  "Enter a number" num

if [ `expr $num % 5` -eq 0 ]
then

    echo "the number($num)  is multiple of 5"

else

    echo "the number($num)  is not multiple of 5"

fi

