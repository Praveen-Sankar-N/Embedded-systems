<<Documentation
Name          : Praveen Sankar N

Date          : 25-FEB-2022

Description   : Script called say_hello, which will print greetings based on time

Sample input  : 
                
Sample output : 
                Good Morning user, Have nice day!
                This is Thursday 08 in June of 2017 (10:44:10 AM)

Documentation
#!/bin/bash

var=$(date | cut -d ":" -f1-3 --output-delimiter=" " | tr -s [:space:] | cut -d " " -f4)

if [ $(date | cut -d ":" -f1-3 --output-delimiter=" " | tr -s [:space:] | cut -d " " -f4) -ge  5 -a $(date | cut -d ":" -f1-3 --output-delimiter=" " | tr -s [:space:] | cut -d " " -f4) -lt 12 ]  # Condition for checking from 5 AM to 12 PM
then

    echo "Good Morning $USER, Have nice day!"
    echo "This is `date +%A` `date +%d` in `date +%B` of `date +%Y` ($(date +%r | cut -d " " -f-2))"

elif [ $(date | cut -d ":" -f1-3 --output-delimiter=" " | tr -s [:space:] | cut -d " " -f4) -ge 12 -a $(date | cut -d ":" -f1-3 --output-delimiter=" " | tr -s [:space:] | cut -d " " -f4) -lt 13 ] # Condition for checking from 12 PM to 1 PM
then

    echo "Good Noon $USER, Have nice day!"
    echo "This is `date +%A` `date +%d` in `date +%B` of `date +%Y` ($(date +%r | cut -d " " -f-2))"

elif [ $(date | cut -d ":" -f1-3 --output-delimiter=" " | tr -s [:space:] | cut -d " " -f4) -gt 13 -a $(date | cut -d ":" -f1-3 --output-delimiter=" " | tr -s [:space:] | cut -d " " -f4) -le 17 ] # Condition for checking from 1 PM to 5 PM
then 

    echo "Good afternoon $USER, Have nice day!"
    echo "This is `date +%A` `date +%d` in `date +%B` of `date +%Y` ($(date +%r | cut -d " " -f-2))"

elif [ $(date | cut -d ":" -f1-3 --output-delimiter=" " | tr -s [:space:] | cut -d " " -f4) -ge 17 -a $(date | cut -d ":" -f1-3 --output-delimiter=" " | tr -s [:space:] | cut -d " " -f4) -lt 21 ] # Condition for checking from 5 PM and 9 PM
then
    echo "Good evening $USER, Have nice day!"
    echo "This is `date +%A` `date +%d` in `date +%B` of `date +%Y` ($(date +%r | cut -d " " -f-2))"

else                                                   # statement to be printed if time is between 9 PM and 5 AM

    echo "Good night $USER, Have nice day!"
    echo "This is `date +%A` `date +%d` in `date +%B` of `date +%Y` ($(date +%r | cut -d " " -f-2))"

fi




