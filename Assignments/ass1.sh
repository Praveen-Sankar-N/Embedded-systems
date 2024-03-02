<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : To Read an input 'n' and to generate a pattern as shown in sample output.

Sample input  : 
    Enter a number: 5

Sample output : 
    1
    1 2
    1 2 3
    1 2 3 4
    1 2 3 4 5

Documentation

read -p "Enter a number:" n

for i in `seq $n`         # it reprsesnt rows 1 to n
do

    for j in `seq $i`     # it represents columns 1 to n
    do

        echo -n "$j "      # for printing elements in rows

    done

    echo ""

done


