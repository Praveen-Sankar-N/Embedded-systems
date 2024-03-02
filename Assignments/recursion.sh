<<Documentation
Name          : Praveen Sankar N

Date          : 24-FEB-2022

Description   : A Recursive function to print each argument passed to the function

Sample input  : 
                ./recursion.sh How are you? I am fine

Sample output :
                How
                are
                you?
                I
                am
                fine

Documentation

#!/bin/bash



function recursion()                   # Function definition for doing recursion
{
    if [ $# -gt 0 ]
    then
        arr=($@)
        i=1
        echo $1
        arr=${arr[@]:1: }
    else
        return
    fi
    recursion ${arr[@]}                # Function calling for recursion
}


if [ $# -gt 0 ]                        # Condition for checking whether the CLA passed or not
then

    recursion $@                       # Initial calling function to pass CLA to function

else                                   # Error message to be printed when no argument passed through CLA
    echo "Error : Pass the arguments through command line."


fi
