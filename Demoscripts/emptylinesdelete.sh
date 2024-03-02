<<Documentation
Name          : Praveen Sankar N

Date          : 20-FEB-2022

Description   : Script to delete empty lines from a file
                 
Sample input  : 
                ./delete_empty_lines.sh file.txt
                
                Contents of file.txt
                    Hello

         

                    How

               

                    are



                    you?

Sample output :
                Empty lines are deleted
                Hello
                How
                are
                you?


Documentation
#!/bin/bash

#!/bin/bash

file=$1
arg=$#

if [ $arg -eq 1 ]                         # Condition for checking whether file is passed as argument or not
then

    echo "Empty lines are deleted"
    sed -e '/^[[:blank:]]/d; /^$/d' $file # To delete the lines which are blank and having tab space

else                                      # To print error message when no arguments passed

    echo "Error: Please pass the file name through command line"

fi
