/*
  Write a c program to find the number is a power of 2 or not

  For example: 8 is a power of 2 (2^3), so the output should be 1 (true), 
               while 10 is not a power of 2, so the output should be 0 (false).
*/

#include <stdio.h>

int main(){
    unsigned int num;

    printf("Enter a number: ");
    scanf("%u", &num);

    if (num > 0 && (num & (num - 1)) == 0)
        printf("%u is a power of 2\n", num);
    else
        printf("%u is not a power of 2\n", num);

    return 0;
}