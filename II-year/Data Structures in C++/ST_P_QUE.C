#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#define size  5
int p_que[2][size];
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
 int temp_rear=rear,temp_d,temp_p;
  if(rear==size-1)
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
   scanf("%d",&temp_d);
   printf("\nenter its priority:\t");
   scanf("%d",&temp_p);
    while(temp_p<p_que[1][temp_rear])
    {
     p_que[0][temp_rear+1]=p_que[0][temp_rear];
     p_que[1][temp_rear+1]=p_que[1][temp_rear];
     temp_rear--;
    }
   p_que[0][++temp_rear]=temp_d;
   p_que[1][temp_rear]=temp_p;
   rear++;
   printf("\ndata is added.");
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
     front++;
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
   int i;
   printf("\n\ndata\tpriority\n");
   for(i=front;i<=rear;i++)
   {
    printf("\n%d\t%d",p_que[0][i],p_que[1][i]);
    }
    getch();
    return;
  }
}
