<<Documentation
Name          : Praveen Sankar N
Date          : 28-FEB-2022

Description   : Script to determine whether a given file system or mount point is mounted

Sample input  : 
                ./mounted_fs.sh /dev/sda2

Sample output :
                File-system /dev/sda2 is mounted on / and it is having 98%
                used space with 3298220 KB free.
    
Documentation
#!/bin/bash

filesys=($(df -h | tr -s " " | sed '1d' | cut -d " " -f1))   # To cut filesystem names
mount=($(df -h | tr -s " " | sed '1d' | cut -d " " -f6))     # To cut mount points alone
usepercent=($(df -h | tr -s " " | sed '1d' | cut -d " " -f5)) # To cut use% alone
free=($(df -h | tr -s " " | sed '1d' | cut -d " " -f4))       # To cut available space alone

if [ $# -eq 1 ]                                                                  # To check whether CLA is passed or not
then
    if [ `df -h | tr -s " " | sed '1d' | cut -d " " -f1 | grep -xc $1` -gt 0 ]   # To check for the presence of filesystem name given in CLA 
    then                                                                         # whether its present in filesystem names or not
        for i in `seq 0 +1 $((${#filesys[@]}-1))`
        do
            if [ `expr $1 \= ${filesys[$i]}` -eq 1 ]                             # To compare the given CLA with filesystem names to
            then                                                                 # print informations.

                echo "File-system $1 is mounted on ${mount[$i]} and it is having ${usepercent[$i]} used space with ${free[$i]} free."
            fi

        done
    else                                                      # Error message if filesystem information is not present
        echo "$1 is not mounted."
    fi

else                                                          # Error message if CLA is not passed 
    echo "Error : Please pass the name of the file-system through command line."
fi



