#include<stdio.h>
#include<conio.h>
void main()
 {
  char c;
  clrscr();
  printf("press 'y' for 'yes':\n\npress 'n' for 'no':\n");
  c=getch();
  if(c=='y')
  printf("\nyou have slected 'yes':");
  else
  if(c=='n')
  printf("\nyou have slected 'no':");
  printf("\n\ni now understand the use of getch().");
  getch();
  }