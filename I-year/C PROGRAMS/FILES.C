#include<stdio.h>
#include<conio.h>
void main()
{
	int account;
	char name[100];
	float balance;
	FILE *fptr;
	clrscr();
	fptr=fopen("basit.dat","r+");
       //	printf("enter data\n");
	fscanf(fptr,"%d%s%f",&account,name,&balance);
	fprintf(fptr,"%d%s%.2f",account,name,balance);
	printf("%d%s%f",account,name,balance);
	fclose(fptr);
	getch();
  }