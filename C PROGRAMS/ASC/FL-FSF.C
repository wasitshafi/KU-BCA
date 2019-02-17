#include"stdio.h"
#include"conio.h"
void main()
{
	int acc;
	float balance;
	char name[20];
	clrscr();
	FILE *fptr;
	fptr=fopen("jhonns.dat","r");
	printf("enter the data \n");
	fscanf(fptr,"%s%d%f",name,&acc,&balance);
	fprintf(fptr,"%s%d%f",name,acc,balance);
	printf("%s%d%f",name,balance,acc);
	fclose(fptr);
	getch();
	}