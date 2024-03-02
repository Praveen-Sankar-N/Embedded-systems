<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p "Enter a number for checking palindrome " num
pal=0
temp=$num
while [ $num -gt 0 ]
do
    a=$(($num%10))
    pal=$((($pal*10)+$a))
    num=$(($num/10))

done

echo "$pal"

if [ $pal -eq $temp ]
then

    echo "The number $temp is palindrome"

else

    echo "The number $temp is not palindrome"

fi



