<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p "enter a number for factorial" fact
factorial=1

for i in `seq $fact -1 1`
do

    factorial=$(($factorial*$i))

done

echo the factorial value is         $factorial    

