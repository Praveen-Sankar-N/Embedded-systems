<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

for i in `seq 1 5`
do

    for j in `seq 5 -1 $i`
    do
        if [ $j -gt $i ]
        then

            echo -n " "

        else
            echo -n "* "
        fi

    done

    echo ""

done

