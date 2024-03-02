<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

if [ $# -eq 1 ]
then
    if [ -f $1 ]
    then
        if [ -s $1 ]
        then
          
            num=$(wc -l $1 | cut -d " " -f1)

            lines=$(expr `expr $num \* 20` / 100) 
            arr=($(shuf -i 1-$num -n $lines))
            echo "${arr[@]}"
            if [ $lines -gt 0 ]
            then
                echo "Before replacing : "
                cat $1
                echo ""
                echo "After replacing : "
                for i in ${arr[@]}
                do

                    sed '$is/^.*$/<-----------Deleted------------>/' $1

                done
                #echo "After replacing"
                #cat $1

            else
                echo "Number of 20% lines is 0. So can't update the pattern"
            fi

        else
            echo "Error : main2.c is empty file. So can’t replace the string."
        fi

    else
        echo "Error : No such a file."
    fi

else
    echo "Error : Please pass the file name through command line."
fi
