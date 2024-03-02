<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p "enter length and breadth" len bre

perimeter=$(echo "2*($len+$bre)" | bc)

echo "the perimeter of rectangle is $perimeter"
