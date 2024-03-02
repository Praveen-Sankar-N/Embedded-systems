<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p "enter a number" num
count=0

for i in `seq 1 $num`
do

    if [ $(($num%$i)) -eq 0 ]
    then

        ((count++))

    fi

done

if [ $count -eq 2 ]
then

    echo "the given number is prime number"

else

    echo "the given number is not prime number"

fi



