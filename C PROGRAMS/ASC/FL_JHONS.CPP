#include"stdio.h"
#include"conio.h"
void main()
{
	int acc;
	float balance;
	char name[20];
	clrscr();
	FILE *fptr;
	fptr=fopen("jhonns.dat","a");
	printf("enter the data \n");
	scanf("%s%d%f",name,&acc,&balance);
	fprintf(fptr,"%s%d%f",name,acc,balance);
	getch();
	}





