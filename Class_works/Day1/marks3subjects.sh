<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p "Enter the 3 subjects marks" sub1 sub2 sub3

total=$(($sub1+$sub2+$sub3))

if [ $total -le 50 ]
then

    echo "FAIL"

elif [ $total -gt 50 -a $total -le 100 ]
then
    echo "AVERAGE"

else
    echo "EXCELLENT"

fi

