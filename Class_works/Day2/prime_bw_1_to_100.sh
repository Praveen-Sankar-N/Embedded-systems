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
total=0

for i in `seq 1 $num`
do

    for j in `seq 1 $i`
    do

        if [ $(($i%$j)) -eq 0 ]
        then

            ((count++))

        fi

        done

        if [ $count -eq 2 ]
        then

            echo -n "$i, "
            ((total++))
        fi

        count=0

done

echo "Total prime numbers are $total"


