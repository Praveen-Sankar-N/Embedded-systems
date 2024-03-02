<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p "Enter a range m and n" m n 

i=$(($m+1))

while [ $i -lt $n ]
do

    echo $i
    i=$(($i+1))

done

