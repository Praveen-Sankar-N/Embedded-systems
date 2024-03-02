<<Documentation
Name          : Praveen Sankar N
Date          : 16-FEB-2022
Description   : Script for arithmetic calculator using command line arguments

Sample input  : 
                /arithmatic_calc.sh 25 + 41

Sample output :
                25 + 41 = 67
Documentation
#!/bin/bash

num1=$1
num2=$3
exp=$2
total=$#

#echo "total arguments passed are $total"

if [ $total -eq 3 ]            # condition for checking the number of variables are 3 
then
    case $exp in               # Case statement for different arithmatic operations

        +)

            addition=$( echo $num1 $exp $num2 | bc )    # Addition of inputs
            echo "$num1 $exp $num2 = $addition"
            ;;
    
        -)
    
            subtraction=$( echo $num1 $exp $num2 | bc ) # Subtraction of inputs
            echo "$num1 $exp $num2 = $subtraction"
            ;;
    
        x)
    
            multiplication=$( echo "scale=2;$num1 *  $num2" | bc )  # Multiplication of inputs
            echo "$num1 $exp $num2 = $multiplication"
            ;;
    
        /)
    
            division=$( echo "scale=2;$num1 $exp $num2" | bc )      # Division of inputs
            echo "$num1 $exp $num2 = $division"
            ;;
    
    
        *) echo "Error: Invalid Input "              # Default statement if different characters
           echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"  # entered in place of 3 inputs.
           ;;

    esac
elif [ $total -eq 0 ]            # Condition for checking no inputs entered
then

    echo "Error:Please pass the arguments through command line"
    echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"

elif [ $total -lt 3 -a $total -gt 0 ]  # Condition for checking inputs given lesser than 3 
then
    echo "Error:Please pass 3 arguments"
    echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"
else                                # For inputs greater than 3

    echo "Error:Please pass 3 arguments only"
    echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"
fi

