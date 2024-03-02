<<Documentation
Name          : Praveen Sankar N
Date          : 21-FEB-2022

Description   : Script to sort a given number in ascending or descending order

Sample input  :
                ./sorting.sh -a 5 4 6 2 3 8 9 7 1

Sample output :

                Ascending order of array is 1 2 3 4 5 6 7 8 9

Documentation

#!/bin/bash

arr=($@)                           # Getting input as array from CLA

length=${#arr[@]}
temp=0

function bubblesort()              # Function definition for bubble sort algorithm
{
    temp=0
    array1=($@)
    len1=${#array1[@]}
    op=${array1[@]: -1}

    array=(${array1[@]:0:$(($len1-1))})

    len=${#array[@]}

for i in $(seq 0 $(($len-1)))      # Nested For loop for accessing elements and comparison 
do
    for j in $(seq $(($i+1)) $(($len-1)))
    do

        if [ $(echo "${array[$i]} $op ${array[$j]}" | bc ) -eq 1 ]
        then

            temp=${array[$i]}
            array[$i]=${array[$j]}
            array[$j]=$temp

        fi

    done

done

echo ${array[@]}
return
}


if [ $length -gt 0 ]              # Condition for checking whether arguments passed or not through command line
then 

    case $1 in                    # Case statement for performing based on option provided using CLA (ascending or descending)

        -a) 
            ascending=`bubblesort ${arr[@]:1:$(($length-1))} ">"`   # Calling function for sorting in ascending order
            echo "Ascending order of array is ${ascending[@]}"
            ;;

        -d) 
            descending=`bubblesort ${arr[@]:1:$(($length-1))} "<"`  # Calling function for sorting in descending order
            echo "Descending order of array is ${descending[@]}"    
            ;;

        *) 
            echo "Error : Please pass the choice."                  # Default statement, if option is not given through Command line
            echo "Usage : ./sorting.sh -a/-d 4 23 5 6 3"
            ;;

    esac

else                                                                # Error, if no arguments passed.

    echo "Error : Please pass the argument through command line."
    echo "Usage : ./sorting.sh -a/-d 4 23 5 6 3"

fi

        



