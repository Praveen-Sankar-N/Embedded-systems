<<Documentation
Name          : Praveen Sankar N
Date          : 19-FEB-2022

Description   :  Script to Print the length of each and every string using arrays

Sample input  : 
                ./string_length.sh hello hai how are you?

Sample output :
                Length of string (hello) - 5
                Length of string (hai) - 3
                Length of string (how) - 3
                Length of string (are) - 3
                Length of string (you?) - 4

Documentation
#!/bin/bash

arr=($@)                                                           # Assigning command line arguments (inputs) to an array.

#echo "${arr[@]}"
len=${#arr[@]}

if [ $len -gt 0 ]                                                  # Condition to check whether the command line arguments passed or not
then
for i in `seq 0 +1 $(($len-1))`                                    # Loop to access each element's character count
do
    
    echo "Length of string (${arr[$i]}) - ${#arr[$i]}"

done

else

    echo "Error : Please pass the arguments through command-line."  # Error info to be printed when condition fails

fi


