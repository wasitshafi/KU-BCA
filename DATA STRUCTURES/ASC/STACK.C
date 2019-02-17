#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#define size 5
int stack[size],tos=-1;
void push(void);
void pop(void);
void peep(void);
void del_nth(void);
void main()
 {
  int choice;
  while(1)
  {
   clrscr();
   printf("<1> for push:\n");
   printf("<2> for pop:\n");
   printf("<3> for peep:\n");
   printf("<4> for delete_nth:\n");
   printf("<0> for exit:\n\n");
   printf("enter your choice:\t");
   scanf("%d",&choice);
   switch(choice)
    {
     case 1: push();
		break;
     case 2: pop();
		break;
     case 3: peep();
		break;
     case 4: del_nth();
		break;
     case 0: exit(0);
    }
   }
}
void push()
{
 if(tos==size-1)
  {
   printf("\n\nstack overflow......!");
   getch();
   return;
  }
 else
 {
  printf("\nenter an element:\t");
  scanf("%d",&stack[++tos]);
  printf("\nelement is pushed.");
  getch();
  return;
  }
}
void pop()
{
 if(tos==-1)
 {
  printf("\nstack underflow.....!");
  getch();
  return;
 }
 else
 {
  int item;
  item=stack[tos--];
  printf("\n element %d poped from stack.",item);
  getch();
  return;
 }
}
void peep()
{
 int i;
 if(tos==-1)
 {
  printf("\n\nstack underflow....!");
  getch();
  return;
 }
 else
 {
   printf("\nelements are as:\t");
    for(i=tos;i>=0;i--)
     printf("\t%d",stack[i]);
   getch();
   return;
 }
}
void del_nth(void)
{
 if(tos==-1)
 {
  printf("\nstack underflow.");
  getch();
  return;
  }
  else
  {
   int pos;
   printf("\nenter position:\t");
   scanf("%d",&pos);
     if(pos>tos+1)
       {
	printf("\ninvalid position.");
	getch();
	return;
       }
      else
      {
       int i=tos,temp_stack[5],temp_tos=-1;
	 while(i>=pos)
	  temp_stack[++temp_tos]=stack[i--];
	 while(temp_tos>=0)
	  stack[i++]=temp_stack[temp_tos--];
       tos--;
       printf("\nelement deleted.");
       getch();
      }
  }
}

