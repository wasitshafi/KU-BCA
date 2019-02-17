#include<stdio.h>
#include<conio.h>
void main()
 {
  char name[20];
  int acc_no;
  float bal;
  clrscr();
  FILE *fptr;
  fptr=fopen("info.dat","w");
  printf("\nenter the name of the consumer\n");
  scanf("%s",name);
  printf("\nenter the acc.no of the consumer\n");
  scanf("%d",&acc_no);
  printf("\nenter the account balance\n");
  scanf("%f",&bal);
  fprintf(fptr,"%s%d%.3f",name,acc_no,bal);
  fclose(fptr);
  getch();
  }
