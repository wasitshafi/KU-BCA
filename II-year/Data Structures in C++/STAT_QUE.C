#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#define size 5
int que[size],front=-1,rear=-1;
void push(void);
void pop(void);
void peep(void);
void main()
 {
  int choice;
  while(1)
  {
   clrscr();
   printf("<1> for push:\n");
   printf("<2> for pop:\n");
   printf("<3> for peep:\n");
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
     case 0: exit(0);
    }
   }
}
void push(void)
{
 if(rear == size-1)
 {
  printf("\nqueue overflow....! ");
  getch();
  return;
 }
 else
 {
  int num;
  printf("\enter data:\t");
  scanf("%d",&num);
    if(front==-1)
     front++;
  que[++rear]=num;
  printf("\nelement is added to queues");
  getch();
  return;
 }
}
void pop(void)
{
 if(front==-1 )
  {
   printf("queue underflow....!");
   getch();
   return;
  }
  else
   {
     if(front==rear)
      {
       front=-1;
       rear=-1;
      }
      else
       front++;
  printf("\nelement poped from queue.");
  getch();
  return;
 }
}
void peep(void)
{
 if(front==-1)
 {
  printf("\nqueue underflow.....!");
  getch();
  return;
 }
 else
 {
  int i;
  printf("\nelements of queues are as :\t");
   for(i=front;i<=rear;i++)
    printf("\t%d",que[i]);
  getch();
  return;
 }
}