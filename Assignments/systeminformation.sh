<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : Script to print system information using commands

Sample input  : 
                ./system_info.sh
                1. Currently logged users
                2. Your shell directory
                3. Home directory
                4. OS name & version
                5. Current working directory
                6. Number of users logged in
                7. Show all available shells in your system
                8. Hard disk information
                9. CPU information.
                10. Memory Informations
                11. File system information.
                12. Currently running process.
                Enter the choice : 2   


                Do you want to continue (y/n) ? y             

Sample output :
                Your shell directory is /bin/bash

Documentation
#!/bin/bash


option="y"

while [ $(expr $option \= "y") -eq 1 ]
do

echo "1. Currently logged users"
echo "2. Your shell directory"
echo "3. Home directory"
echo "4. OS name & version"
echo "5. Current working directory"
echo "6. Number of users logged in"
echo "7. Show all available shells in your system"
echo "8. Hard disk information"
echo "9. CPU information."
echo "10. Memory Informations"
echo "11. File system information."
echo "12. Currently running process."


read -p "Enter the choice : " choice

if [ $choice -le 12 ]
then

    case $choice in

        1)
            echo "Currently logged users is $USER"
            ;;

        2)
            echo "Your shell directory is $SHELL"
            ;;

        3)
            echo "Home directory is $HOME"
            ;;


        4) 
            echo "OS name & version is `uname -o` & `uname -r`"
            ;;

        5)
            echo "Current working directory is `pwd`"
            ;;

        6)
            echo "Number of users logged in is `who -q`"
            ;;

        7)
            echo "Show all available shells in your system is `cat /etc/shells`"
            ;;

        8)
            echo "Hard disk information is `hwinfo --short`"
            ;;

        9)
            echo "CPU information is `cat /proc/cpuinfo`"
            ;;

        10)
            echo "Memory Informations is `cat /proc/meminfo`"
            ;;

        11)
            echo "File system information is `df`"
            ;;

        12)
            echo "Currently running process is `ps -ely`"
            ;;

        *)
            echo "Error : Invalid option, please enter valid option"
            ;;

    esac
else
    echo "Error : Invalid option, please enter valid option"

fi

read -p "Do you want to continue(y/n) ?" option

done






