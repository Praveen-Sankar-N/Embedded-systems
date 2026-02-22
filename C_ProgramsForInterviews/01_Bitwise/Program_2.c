/*
  Write a c program to check a number's bits are palindrome or not

  For example: 9 = 1001 its reversal is also 1001 = 9 again
*/

#include <stdio.h>
#include <stdbool.h>

bool CheckPalindromeBitwise(unsigned int num) // This can be used for Bit reversal as well
{
    unsigned int reversed = 0;
    unsigned int original = num;
    
    while (num > 0)
    {
        reversed = (reversed << 1) | (num & 1);
        num >>= 1;
    }
    
    return (original == reversed);
}

int main(){
    unsigned int num;

    printf("Enter a number: ");
    scanf("%u", &num);

    if (num > 0)
    {
        if ( ((num & (num + 1)) == 0) || ((num - 1) & (num - 2) == 0) )
            printf("Number under if %d is palindrome\n", num);
        else if (CheckPalindromeBitwise(num))
            printf("Number under else if %d is palindrome\n", num);
        else
            printf("Number %d is not a palindrome\n", num);
    }
    return 0;
}