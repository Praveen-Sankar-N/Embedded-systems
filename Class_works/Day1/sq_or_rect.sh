<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p "enter length and breadth" len bre

if [ `echo "$len == $bre" | bc` -eq 1 ]
then

    echo "the given parameters belong to square"

else

    echo "the given parameters belong to rectangle"

fi
