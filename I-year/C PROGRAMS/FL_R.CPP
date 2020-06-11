#include<stdio.h>
#include<conio.h>
void main()
{
  char name[20],m_no[10];
  clrscr();
  FILE *fptr;
  fptr=fopen("basic.dat","a+");
  printf("\nenter the name of the student :\t");
  scanf("%s",name);
  printf("\nenter the mobile no. of the student:\t");
  scanf("%s",m_no);
  fprintf(fptr,"%s%s",name,m_no);
  fclose(fptr);
  getch();
  }

