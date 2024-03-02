<<Documentation
Name          : Praveen Sankar N
Date          : 19-FEB-2022

Description   : Chess board script

Sample input  : 

Sample output :
            10101010                  1 --> white
            01010101                  0 --> black
            10101010
            01010101
            10101010
            01010101
            10101010
            01010101                                   
Documentation
#!/bin/bash

for i in `seq 1 8`                                 #Outer loop represents rows
do
    for j in `seq 1 8`                             # Inner loop represents columns
    do
        if [ `echo "$(($i+$j)) % 2" | bc` -eq 0 ]  # Condition for printing white in alternative
        then                                       # position to the black in rows and columns

            echo -n -e "\e[47m" " "                # White colur

        else

            echo -n -e "\e[40m" " "                # Black colour

        fi

    done

    echo -e -n "\e[0m" " " ; echo ""               # For normalisation after every rows
   

done

