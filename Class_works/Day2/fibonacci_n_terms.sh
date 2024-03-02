<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p "Enter the total no of terms in fibonacci series to be displayed" n

a=0
b=1
fib=0

echo -n "the fibonacci series of $n terms is  "
for i in `seq 1 $n`
do

    echo -n "$fib, "
    a=$b
    b=$fib
    fib=$((a+b))

done
echo ""
