#include<stdio.h>
#include<conio.h>
void main()
     {
     int n,sn;
     clrscr();
     printf("\n\nenter the value\n\n");
     scanf("%d",&n);
     printf("\n\n the value is %d\n\n",n);
     sn=(n*(n+1)*(2*n+1))/6;
     printf("\n\n the sum of %d natural no. is %d\n\n",n,sn);
     getch();
     }