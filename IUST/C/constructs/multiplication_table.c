#include<stdio.h>
#include<stdlib.h>
int main()
{
    int  num, limit, product, i;

    printf("\n\nEnter the table no which you want:\t");
    scanf("%d", &num);
    printf("\nEnter the limit up to you want this table:\t");
    scanf("%d", &limit);

    printf("\n\nTable of %d is as follows:\n\n", num);
    for(i = 1;i <= limit;i++)
    {
      product = num * i;
      printf("\n%d X %d = %d", num, i, product);
    }

 return 0;
}
