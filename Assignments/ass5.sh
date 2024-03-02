<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : Program to find largest number among n numbers entered in command line
Sample input  : 
    ./ass5.sh 9 7 3 10 13

Sample output :
    the greatest number is 13

Documentation
#!/bin/bash

arr=($@)
great=${arr[0]}
length=${#arr[@]}

if [ $length -eq 0 ]
then

    echo Error: No arguments passed

elif [ $length -eq 1 ]
then

    echo the greatest number is ${arr[0]}

else

    for i in `seq 1 $(($length-1))`
    do

        b=${arr[$i]}


        if [ $(echo "$great < $b" | bc) -eq 1 ]
        then

            great=$b

        fi

    done

echo the greatest number is $great

fi



