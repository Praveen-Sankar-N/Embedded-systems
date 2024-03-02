<<Documentation
Name          : Praveen Sankar N

Date          : 21-FEB-2022

Description   : Script to rename a file/directory replaced by lower/upper case letters

Sample input  : 
                ./file_upper_lower.sh

Sample output :
                Files are rename in lowercase and directories are renamed in upper case

Documentation
#!/bin/bash

arr=(`pwd | ls`)         # Getting contents of current working directory in an array


len=${#arr[@]}


for i in `seq 0 +1 $(($len-1))`  # For loop for accessing every elements(file/directories) of array
do
    
    if [ -f ${arr[$i]} ]         # Condition for checking a regular file and renaming its name to lower case
    then

        
        mv ${arr[$i]} `echo ${arr[$i]} | tr [:upper:] [:lower:]`


    elif [ -d ${arr[$i]} ]      # Condition for checking a directory and renameing its name to upper case
    then

        temp1=`echo ${arr[$i]} | tr [:lower:] [:upper:]`
        mv ${arr[$i]} $temp1

    else                        # No change for other types of files
        echo "no change"

    fi
done

echo "Files are rename in lowercase and directories are renamed in upper case" # Output printing line after renaming is completed
