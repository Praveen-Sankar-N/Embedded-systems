<<Documentation
Name          : 
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

function addition()
{
    #echo -n "Addtion of 2 numbers is: "
    add=$(($1+$2))
    echo "$add"
    return

}

read -p "Enter 2 numbers" num1 num2

ansr=`addition $num1 $num2`
echo -n "Addtion of 2 numbers is: "
echo "$ansr"

