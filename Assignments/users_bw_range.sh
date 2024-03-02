<<Documentation
Name          : Praveen Sankar N

Date          : 
Description   : Script to count the number of users with user IDs between given range.

Sample input  : 
                ./user_ids.sh 0 100

Sample output :
                Total count of user ID between 0 to 100 is : 3    

Documentation
#!/bin/bash

users=($(cat /etc/passwd | cut -d ":" -f3))     # Getting user IDs in an array
count=0


if [ $# -eq 2 ]                  # Condition for checking the 2 CLAs passed or not
then
    if [ $1 -lt $2 ]             # Condition for checking 1st argument is lesser than 2nd argument
    then
        for i in `seq 0 +1 $((${#users[@]}-1))` # Loop for accesing every elemnts in users array
        do
            if [ ${users[$i]} -ge $1 -a ${users[$i]} -le $2 ]
            then
                
                count=$(($count+1))

            fi
        done
        echo "Total count of user ID between $1 to $2 is : $count"

    else
        echo "Error : Invalid range. Please enter the valid range through CL."
    fi

elif [ $# -eq 0 ]        # If CLA is 0 then by default it should count between 500 to 10000
then
    for j in ${users[@]}
    do
        if [  $j -ge 500 -a $j -le 10000 ]
        then
            let count+=1
        fi
    done
    echo "Total count of user ID between 500 to 10000 is : $count"


else                     # Error statement if 1 or more than 2 CLAs are  passed.
    echo -e "Error : Please pass 2 arguments through CL.\nUsage : ./user_ids.sh 100 200"
fi

