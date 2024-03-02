<<Documentation
Name          : Praveen Sankar N
Date          : 25-FEB-2022
Description   : To create an infinite feedback loop using pipes or redirection.
Sample input  : 
                ./redirection.sh

Sample output : 
                Before loop file contents
                Hai hello
                After loop file contents
                Hai hello
                Hai hello
                Hai hello
                Hai hello
                Hai hello
                Hai hello
                Hai hello

Documentation
#!/bin/bash


echo "Hai Hello" > file1.txt               # Passing content to a file using redirection
echo "Before loop file contents"
cat file1.txt

echo "After loop file contents"

tail -f file1.txt >> file1.txt | tail -f file1.txt   # Creating infinite loop using Follow option of tail command

