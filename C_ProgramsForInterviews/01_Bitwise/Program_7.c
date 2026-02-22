/*
  Write a c program to find the minumum number among three numbers without using any comparison operator

  For example: Input: 3, 1, 2
               Output: 1
*/

#include <stdio.h>  

int MinOfThree(int a, int b, int c)
{
    int min = a; // Assume a is the minimum

    // Check if b is less than min
    min = (min & ((b - min) >> 31)) | (b & ~((b - min) >> 31));

    // Check if c is less than min
    min = (min & ((c - min) >> 31)) | (c & ~((c - min) >> 31));

    return min;
}

int main() {
    int a, b, c;

    printf("Enter three numbers: ");
    scanf("%d %d %d", &a, &b, &c);

    int min = MinOfThree(a, b, c);
    printf("The minimum number among %d, %d and %d is: %d\n", a, b, c, min);

    return 0;
}