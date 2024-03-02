<<Documentation
Name          : Praveen Sankar N

Date          : 24-FEB-2022

Description   : Script to convert string lower to upper and upper to lower

Sample input  : 
                ./upper_lower.sh file.txt
                1 – Lower to upper
                2 – Upper to lower
                Please select option : 1

Sample output :
                WHAT IS OS?
                WHAT ARE THE DIFFERENT OS?
                WHEN IS OS USED?
                WHAT IS PARTITION AND ITS USE?
                HOW MANY PARTITIONS CAN BE DONE?

Documentation
#!/bin/bash

file=$1


if [ $# -eq 1 ]        # Condition for checking the arguments passed
then
    if [ -f $file ]    # Condition for checking the file
    then
        if [ -s $file ] # Condition for file existence and content of the file
        then
            echo "1 – Lower to Upper" 
            echo "2 – Upper to Lower"
            read -p "Please select option: " option

            case $option in  # case statement for different options passed by user

                1) cat $file | tr [a-z] [A-Z]
                    ;;
                2) cat $file | tr [A-Z] [a-z] 
                    ;;
                *) echo "Please select a correct option"
                    ;;
            esac

        else
            echo "No contents inside the file."

        fi

    else

        echo "No file exists"

    fi
else
    echo "Error : Please pass the file name through command line."
fi




    
