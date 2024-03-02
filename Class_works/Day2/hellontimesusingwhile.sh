<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p "Enter a number : " n
i=0
while [ $i -lt $n ]
do

    echo "hello"
    echo "$i"
   # let i++
   # i=$(($i+1))
   # i=$((++i))
   # let ++i
   # ((i++))
   ((i=i+1))

done

