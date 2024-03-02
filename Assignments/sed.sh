<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p "enter a line number" i

echo "BEFORE : " ; cat $1
echo""

sed  '2s/^.*$/<---removed--->/g' $1 > $1
#echo "AFTER : "
#cat $1

