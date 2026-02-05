/*
  Lets take 2 different number and write a c program to change the 2nd number in such a way that 
  it should be equal to 1st number using bitwise operator

  example : num1 = 15 = 1111
            num2 = 10 = 1010
            num2 should be made 9 by changing bits which are different
*/

#include <stdio.h>

int main(){
    unsigned int num1 = 8, num2 = 10;
    unsigned int temp1 = 0, temp2 = 0;

    for(int i = 0; i < 32; i++)
    {
        temp1 = (num1 & (1 << i));
        temp2 = (num2 & (1 << i));
        if (temp1 ^ temp2){
            //num2 = (num2 & (~1 << i)) | (temp2 ^ (1 << i));
            num2 = num2 | (temp2 ^ (1 << i));
        }
    }

    printf("num1 = %d\nnum2 = %d\n",num1, num2);
    return 0;
}