<<Documentation
Name          : Praveen Sankar N

Date          : 22-FEB-2022

Description   : Script to print contents of file from given line number to next given number of lines.

Sample input  : 
                ./file_filter.sh 5 3 data.txt

Sample output :
                line number 5
                line number 6
                line number 7

Documentation
#!/bin/bash

file=$3
limit=$(($1+$2-1))


if [ $# -eq 3 ]              # Condition for checking 3 arguments passed through comamnd line
then
    

    if [ -s $file ]          # Condition for checking file existence and content existence if file is having content
    then
        lines=`wc -l < $file`
        if [ `expr $lines \>= $limit` -eq 1 ]  # Condition for checking the minimum nuber of lines required.
        then

            head -n$limit $file | tail -n$2    # For printing required number of lines from given file i/p

        else                 
            echo "Error: $file is having only $lines lines. file should have atleast $limit lines"
        fi

    else 
        echo "$file does not exist or $file does not have any content."
    fi

else                         # Error statement, if none arguments passed.

    echo "Error: arguments missing!"
    echo "Usage: ./file_filter.sh start_line upto_line filename"
    echo "For eg. ./file_filter.sh 5 5 <file>"

fi




