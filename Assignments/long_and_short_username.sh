<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

arr=(`cat /etc/passwd | cut -d ":" -f1`)
long=${arr[0]}
short=${arr[0]}

for i in `seq 1 $((${#arr[@]}-1))`
do

    if [ `echo "${#long} < ${#arr[$i]}" | bc` -eq 1 ]
    then

        long=${arr[$i]}

    elif [ `echo "${#short} > ${#arr[$i]}" | bc` -eq 1 ]
    then

        short=${arr[$i]}

    fi

done

echo "The Longest Name is  : $long"
echo "The Shortest Name is : $short"

