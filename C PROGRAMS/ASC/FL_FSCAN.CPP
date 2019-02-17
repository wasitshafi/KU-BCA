#include"stdio.h"
#include"conio.h"
void main()
{
	int acc;
	char name[20];
	clrscr();
	FILE *fptr;
	fptr=fopen("filescan.dat","r+");
       /*printf("enter the customer name:\n");
	scanf("%s",name);
	printf("enter the acc. no:\t");
	scanf("%d",&acc);
	fprintf(fptr,"%s%d",name,acc); */

       fscanf(fptr,"%s%d",name,acc);
       printf("%s%d",name,acc);
	fclose(fptr);
	getch();
	}