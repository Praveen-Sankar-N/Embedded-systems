<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : To Read an input 'n' and to generate a pattern as shown in sample output.

Sample input  : 
    Enter a number: 4

Sample output : 
    1
    2 3
    4 5 6
    7 8 9 10

Documentation

read -p "Enter a number: " n
num=0

for i in `seq $n`         # Outer Loop represents rows 1 to n
do

    for j in `seq $i`     # Inner Loop represents columns 1 to i
    do

        let num+=1        # Its for adding the value whenever inner loop runs
        echo -n "$num "   # Its for printing elements in rows

    done

    echo ""

done


