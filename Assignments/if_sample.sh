<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

a=10
b=20
c=15

if [ `expr $c \> $a` -a `expr $c \< $b` -eq 1 ]
then
    echo "Okay"

else 
    echo "Not okay"
fi
