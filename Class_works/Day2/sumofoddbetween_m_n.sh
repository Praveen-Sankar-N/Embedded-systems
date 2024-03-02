<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p "Enter m and n" m n

sum=0

for i in $(seq $m $n)
do
    if [ $(($i%2)) -ne 0 ]
    then
        sum=$(($sum+$i))
    fi

done

echo "the sum of all odd numbers from $m to $n is $sum"
