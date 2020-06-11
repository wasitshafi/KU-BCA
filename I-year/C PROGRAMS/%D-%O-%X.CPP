#include<stdio.h>
#include<conio.h>
void main()
       {
	int a,b,c;
	clrscr();
	printf("\n\nenter the values of a,b and c :\n");
	scanf("%d%d%d",&a,&b,&c);
	printf("\nin decimal      number system value of\t a=%d\tb=%d\tc=%d\n\n",a,b,c);
	printf("\nin octal        number system value of\t a=%o\tb=%o\tc=%o\n\n",a,b,c);
	printf("\nin hexa decimal number system value of\t a=%x\tb=%x\tc=%x\n\n",a,b,c);
	getch();
       }
