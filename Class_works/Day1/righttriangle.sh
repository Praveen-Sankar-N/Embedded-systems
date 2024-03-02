<<Documentation
Name          : Praveen Sankar N
Date          : 
Description   : 
Sample input  : 
Sample output :
Documentation
#!/bin/bash

read -p "enter 3 side of a traingle: " side1 side2 side3

if [ `echo "$side1>$side2" | bc` -eq 1 ]
then

    if [ `echo "$side1>$side3" | bc` -eq 1 ]
    then

        hyp=$side1
        adj=$side2
        opp=$side3

    else
        
        hyp=$side3
        adj=$side1
        opp=$side2
    fi

elif [ `echo "$side2>$side3" | bc` -eq 1 ]
then

    hyp=$side2
    adj=$side1
    opp=$side3

else
    hyp=$side3
    adj=$side1
    opp=$side2

fi

if [ `echo "scale=2 ; $hyp^2 == ($adj^2 + $opp^2)" | bc` -eq 1 ]
then

    echo "The sides are of absolute right angle triangle"

else

    echo "The side are of not right angle triangle"

fi
