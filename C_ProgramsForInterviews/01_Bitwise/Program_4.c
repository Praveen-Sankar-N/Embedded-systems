/*
  Write a c program to swap bytes of a number. This is called as Endianess conversion.

  For example: 0x12345678 -> 0x78563412
*/

#include <stdio.h>

int main()
{
    unsigned int num;

    printf("Enter a number: ");
    scanf("%u", &num);

    unsigned int swapped = ((num >> 24) & 0x000000FF) | // Move byte 3 to byte 0
                           ((num << 8) & 0x00FF0000) | // Move byte 1 to byte 2
                           ((num >> 8) & 0x0000FF00) | // Move byte 2 to byte 1
                           ((num << 24) & 0xFF000000); // Move byte 0 to byte 3

    printf("Number before swapping bytes: 0x%08X\n", num);
    printf("Number after swapping bytes: 0x%08X\n", swapped);

    return 0;
}