<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : For each directory in the $PATH, display the number of executable files in that directory

Sample input  : 
                ./executable_path.sh

Sample output :
                Current dir: /usr/local/sbin
                current count: 0
                Current dir: /usr/local/bin
                current count: 0
                Current dir: /usr/sbin
                current count: 205
                Current dir: /usr/bin
                current count: 1889
                Current dir: /sbin
                current count: 187
                Current dir: /bin
                current count: 159
                Current dir: /usr/games
                current count: 5
                Current dir: /usr/local/games
                current count: 0
                Total – 2445

Documentation
#!/bin/bash

dirpath=($(printenv PATH | tr : \\n))  # For getting PATH directories list in an array
count=0 
total=0

for i in ${dirpath[@]}                 # Loop for accessing every PATH directories 
do
    
    echo "Current dir:$i"
    cd $i
    
    files=(`ls $i`)                    # For getting every file list in an array with respect to particular directory(i)

    for j in ${files[@]}               # Loop for accessing the files list (j) within a directory(i)
    do
        if [ -x $j ]                   # Condition for checking executable files
        then 

            let count+=1
            let total+=1

        fi
    done
    echo "current count:$count"        # To print count of executable files
    count=0                            # Making count '0' before processing next directory (i)
    
    
done
echo "Total – $total"                  # Printing total count of executable files of all directories
    



