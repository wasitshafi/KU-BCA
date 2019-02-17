#include<stdio.h>
#include<conio.h>
void main()
{
 int bk;
 char name[10];
 clrscr();
 FILE *fptr;
 fptr=fopen("nu_f.dat","r");
/* printf("enter the name of the person");
 scanf("%s",name);
 printf("enter the bank a/c no:");
 scanf("%d",&bk);
 fprintf(fptr,"%s%d",name,bk);
 getch();
 clrscr();*/
fscanf(fptr,"%s%d",name,bk);
 printf("%s\t%d",name,bk);
 fclose(fptr);
 getch();
 }