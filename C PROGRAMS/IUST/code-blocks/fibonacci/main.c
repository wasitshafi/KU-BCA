#include<stdio.h>

void main()
{
    int n, t, x = 0, y = 1, count;

    printf("\nEnter the number of terms of Fibonacci you want to print ? \t");
    scanf("%d", &n);
    printf("0\t");
    for (count = 0;count < n - 1; count++)
    {
        t = x + y;
        x = y;
        y = t;
        printf("%d\t", t);
    }
    printf("\n");



}
