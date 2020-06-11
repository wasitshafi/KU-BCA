#include<stdio.h>
#include<conio.h>
void main()
	{
		char ascii;
		clrscr();
		printf(" enter any character to check ascii code of that\n\t\n\n");
		ascii=getchar();
		printf("\n\nthe ascii code of ' %c ' is %d",ascii,ascii);
		getch();
	}