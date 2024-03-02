<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p "enter a number" num

for i in `seq 1 $num`
do

    for j in `seq $num -1 1`
    do
        if [ $j -le $i ]
        then

            echo -n "*"

        else
            echo -n " "
        fi

    done

    echo ""

done


