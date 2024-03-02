<<Documentation
Name          : Praveen Sankar N

Date          : 20-FEB-2022

Description   : Script to perform arithmetic operation on digits of a given number
                
Sample input  : 
                ./operator_dependent.sh 1234+

Sample output :
                Sum of digits = 10

Documentation
#!/bin/bash

var=$1


operator=${var: -1}


function arithmatic_operation()
{
    array=$1
    op=$2
    operation=${array:0:1}
    len=${#array}

    for i in `seq 1 $(($len-1))`
    do
        
        operation=`echo "scale=2;$operation $op ${array:$i:1}" | bc`
        

    done

echo "$operation"
return
}

if [ $# -eq 1 ]
then

case $operator in

    +) 
        add=$(arithmatic_operation ${var:0:-1} "+")
        echo "Sum of digits is $add" ;;
    -) 
        sub=$(arithmatic_operation ${var:0:-1} "-")
        echo "Subtraction of digits is $sub" ;;
    x) 
        mult=$(arithmatic_operation ${var:0:-1} "*")
        echo "Multiplication of digits is $mult" ;;
    /) 
        div=$(arithmatic_operation ${var:0:-1} "/")
        echo "Division of digits is $div"  ;;
    *) 
        echo "Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)" 
        echo "Usage : ./operator_dependent.sh 2345+"
        ;;

esac

else

    echo "Error : Please pass the arguments through CL."
    echo "Usage : ./operator_dependent.sh 2345+"

fi


