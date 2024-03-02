<<Documentation
Name          : Praveen Sankar N

Date          : 25-FEB-2022

Description   : Given album name and corresponding directory, this scripts renames the j                pg files with new name passed through command line

Sample input  : 
                ./rename_album.sh day_out

Sample output :
                All .jpg files in current directory is renamed as
                day_out001.jpg day_out002.jpg day_out003.jpg day_out005.jpg day_out004.jpg


Documentation
#!/bin/bash


arr=(`ls *.jpg`)                # To enlist jpg files and store it in an array


if [ $# -eq 1 ]                 # Condition for checking whether the CLA passed or not
then

    for i in `seq 0 +1 $((${#arr[@]}-1))` # Loop for accessing the jpg file names
    do
    

        ref=`echo ${arr[$i]} | tr -d [:digit:] | tr -d ".jpg"` # 

        
        if [ `expr $1 \!= $ref` -eq 1 ] # Condition for checking the same name exists or not
        then 
            
            mv ${arr[$i]} $1`echo ${arr[$i]} | tr -d [:alpha:] | tr -d [:punct:]`".jpg"    # For renaming the jpg files with newname given
        fi


    done
    if [ `expr $1 \!= $ref` -eq 1 ]
    then 

        echo "All .jpg files in current directory are renamed as"
        ls *.jpg

    else
       echo  "jpeg files with the same name already exists"
   fi
else                                    # Error if arguments are not passed
    echo "Error : Please pass the prefix name through command line."
fi

