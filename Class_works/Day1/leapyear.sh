<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p "Enter the year : "  year

if [ $(($year%100)) -eq 0 ]
then
    if [ $(($year%400)) -eq 0 -a $(($year%4)) -eq 0 ] 
    then 

        echo "the year $year is leap year"
    else

        echo "the year $year is not a leap year"

    fi

elif [ $(($year%4)) -eq 0 ]
then
    echo "the year $year is leap year"

else

    echo "the year $year is not a leap year"
fi


