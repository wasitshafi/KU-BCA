#include<stdio.h>

int main()
{
    int num, no_of_digits, temp_num, rem, sum, product;

    printf("Enter number...");
    scanf("%d", &num);

    temp_num = num;
    no_of_digits = 0;
    while(temp_num)
    {
        no_of_digits++;
        temp_num = temp_num / 10;
    }

    sum = 0;
    temp_num = num;
    while(temp_num)
    {
        rem = temp_num % 10;
        product = 1;
        for(int i = 1 ; i <= no_of_digits; i++)
        {
            product = product * rem;
        }
        sum += product;
        temp_num = temp_num / 10;
    }

    if(sum == num)
        printf("%d is a Armstrong Number", num);
    else
        printf("%d is Not a Armstrong Number", num);
    
    return 0;
}
