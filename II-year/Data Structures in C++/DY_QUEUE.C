#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
void push();
void peep();
void main()
{
 int choice;
 while(1)
 {
  printf("<1> for push.\n");
  printf("<2> for peep.\n");
  printf("<0> for exit.\n\n");
  printf("enter your choice:\n\n");
  scanf("%d",&choice);
  switch(choice)
  {
   case 1:push();
		break;
   case 2:peep();
		break;
   case 0:exit(0);
   }
  }
 getch();
}