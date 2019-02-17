#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#define size  5
int c_que[size];
int front=-1,rear=-1;
void push();
void pop();
void peep();
void main()
 {
  int choice;
  while(1)
  {
   clrscr();
   printf("<1> for push.\n");
   printf("<2> for pop.\n");
   printf("<3> for peep.\n");
   printf("<0> for exit.\n\n");
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
void push()
{
  if(rear==size-1 && front==0 || rear+1==front)
  {
   printf("queue overflow....!");
   getch();
   return;
  }
  else
  {
   if(front==-1)
    front++;
   printf("enter data:\t");
    if(rear==size-1)
    {
     rear=0;
     scanf("%d",&c_que[rear]);
    }
    else
     scanf("%d",&c_que[++rear]);
   printf("\n\nelement is added in queue.");
   getch();
  }
}
void pop()
{
 if(front==-1)
 {
  printf("\nqueue underflow....!");
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
    {
      if(front==size-1 && front>rear)
       front=0;
      else
       front++;
    }
    printf("\nelement poped from queue.");
    getch();
    return;
   }
}
void peep()
 {
  if(front==-1)
  {
   printf("\nqueue underflow....!");
   getch();
   return;
  }
  else
  {
   printf("elements of queues are as:");
    if(rear>=front)
    {
     int i;
      for(i=front;i<=rear;i++)
       {
	printf("\t%d",c_que[i]);
       }
    }
    else
    {
     int i;
      if(rear<front)
      {
	for(i=front;i<size;i++)
	 printf("\t%d",c_que[i]);
	for(i=0;i<=rear;i++)
	 printf("\t%d",c_que[i]);
      }
    }
   getch();
   return;
 }
}