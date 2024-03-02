<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p "Enter a number : " num

a=0
b=1
fib=0
#echo -ne "$a\t$b\t"

while [ $fib -le $num ]
do

    echo -n "$fib, "
    a=$b
    b=$fib
    
    fib=$(($a+$b))

done
echo ""

