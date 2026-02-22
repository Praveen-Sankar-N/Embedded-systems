/*
  Write a c program to swap every even and odd bits of a number

  For example: 154 = 10011010 its swapping will be 01011001 = 89
*/

#include <stdio.h>

unsigned int SwapEvenOddBits(unsigned int num)
{
    unsigned int even_bits = num & 0xAAAAAAAA; // Mask for even bits
    unsigned int odd_bits = num & 0x55555555;  // Mask for odd bits
    
    even_bits >>= 1; // Shift even bits right
    odd_bits <<= 1;  // Shift odd bits left
    
    return (even_bits | odd_bits); // Combine the swapped bits

    //return ( ( number & 0xAAAAAAAA ) >> 1 ) | ( ( number & 0x55555555 ) << 1 );
}

int main(){
    unsigned int num;

    printf("Enter a number: ");
    scanf("%u", &num);

    printf("Number before swapping even and odd bits: 0b-%032b\n", num);
    unsigned int swapped = SwapEvenOddBits(num);
    printf("Number after  swapping even and odd bits: 0b-%032b\n", swapped);

    return 0;
}