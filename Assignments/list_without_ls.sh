<<Documentation
Name          : Praveen Sankar N

Date          : 28-FEB-2022

Description   : Script to print contents of a directory without ls command

Sample input  :
                ./output_ls.sh ~/ECEP

Sample output :
                /home/user/ECEP:
                Linux_Systems Advnc_C Linux_Internals Data_Structures MC

Documentation
#!/bin/bash 

if [ $# -gt 0 ]  # Checking for CLA passed or not
then

    for i in $@  # Loop for accessing every elements passed through CLA
    do
        if [ -d $i ] # checking for the existence of directory
        then
            echo "$i: "
            dir $i 
           
        else
            echo "output_ls.sh: Cannot access ‘$i’ : No such a file or directory."

        fi
    done

else
    dir
fi

