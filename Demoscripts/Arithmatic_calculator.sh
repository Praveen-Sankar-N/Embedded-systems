#!/bin/bash

num1=$1
num2=$3
exp=$2
total=$#                               

#echo "total arguments passed are $total"

if [ $total -eq 3 ]
then
    case $exp in

        +) 
        
            addition=$( echo $num1 $exp $num2 | bc )
            echo "$num1 $exp $num2 = $addition"
           
            ;;
            
        -) 
        
            subtraction=$( echo $num1 $exp $num2 | bc )
            echo "$num1 $exp $num2 = $subtraction"
           
            ;;
            
        x) 
        
            multiplication=$( echo "scale=2;$num1 *  $num2" | bc )
            echo "$num1 $exp $num2 = $multiplication"
           
            ;;
            
        /) 
        
            division=$( echo "scale=2;$num1 $exp $num2" | bc )
            echo "$num1 $exp $num2 = $division"
           
            ;;
            
        
        *) echo "input expression not matching"  ;;

    esac

elif [ $total -eq 0 ] 
then

    echo "Please pass the arguments through the command line"

elif [ $total -lt 3 -a $total -gt 0 ]
then
    echo "Please pass 3 arguments"

else 

    echo "Please pass 3 arguments only"

fi


    
