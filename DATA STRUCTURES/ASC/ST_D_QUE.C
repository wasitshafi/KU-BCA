#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#define size 10
int d_que[size],front1=-1,rear1=-1,front2=size,rear2=size;
void push_l(void);
void push_r(void);
void pop_l(void);
void pop_r(void);
void peep_l(void);
void peep_r(void);
void peep_all(void);
void main()
 {
  int choice;
  while(1)
  {
   clrscr();
   printf("<1> for push left:\n");
   printf("<2> for push right:\n");
   printf("<3> for pop left:\n");
   printf("<4> for pop right:\n");
   printf("<5> for peep left :\n");
   printf("<6> for peep right:\n");
   printf("<7> for peep all:\n");
   printf("<0> for exit:\n\n");
   printf("enter your choice:\t");
   scanf("%d",&choice);
   switch(choice)
    {
     case 1: push_l();
		break;
     case 2: push_r();
		break;
     case 3: pop_l();
		break;
     case 4: pop_r();
		break;
     case 5: peep_l();
		break;
     case 6: peep_r();
		break;
     case 7: peep_all();
		break;
     case 0: exit(0);
    }
   }
}
void push_l(void)
{
 if(rear1==rear2-1)
 {
  printf("\nqueue overflow....! ");
  getch();
  return;
 }
 else
 {
  if(front1==-1)
  front1++;
  printf("\enter data:\t");
  scanf("%d",&d_que[++rear1]);
  printf("\nelement is added to queues");
  getch();
  return;
 }
}
void pop_l(void)
{
 if(front1==-1)
 {
  printf("\nqueu underflow(left sided).");
  getch();
  return;
 }
 else
 {
    if(front1==rear1)
    {
     front1=-1;
     rear1=-1;
    }
     else
     front1++;
  printf("\nelement poped from queue(left sided).");
  getch();
  return;
 }
}
void pop_r(void)
{
 if(front2==size)
 {
  printf("\nqueu underflow(right sided).");
  getch();
  return;
 }
 else
 {
    if(front2==rear2)
    {
     front2=size;
     rear2=size;
    }
     else
     front2--;
  printf("\nelement poped from queue(right sided).");
  getch();
  return;
 }
}
void push_r(void)
{
 if(rear2==rear1+1)
 {
  printf("\nqueue overflow....! ");
  getch();
  return;
 }
 else
 {
  if(front2==size)
  front2--;
  printf("\nenter data:\t");
  scanf("%d",&d_que[--rear2]);
  printf("\nelement is added to queues");
  getch();
  return;
 }
}
void peep_l(void)
{
 if(front1==-1)
 {
  printf("\nqueue underflow(left sided).....!");
  getch();
  return;
 }
 else
 {
  int i;
  printf("\nelements of queues(left sided) are as :\t");
   for(i=front1;i<=rear1;i++)
    printf("\t%d",d_que[i]);
  getch();
  return;
 }
}
void peep_r(void)
{
 if(front2==size)
 {
  printf("\nqueue underflow(right sided).....!");
  getch();
  return;
 }
 else
 {
  int i;
  printf("\nelements of queues(right sided) are as :\t");
   for(i=front2;i>=rear2;i--)
    printf("\t%d",d_que[i]);
  getch();
  return;
 }
}
void peep_all(void)
{
  if(front1==-1 && front2==size)
  {
   printf("\nqueue underflow.....!");
   getch();
   return;
  }
  else
  {
   int i,j;
   printf("\nelements of queues are as :\t");
    if(front1!=-1)
    {
     for(i=front1;i<=rear1;i++)
      printf("\t%d",d_que[i]);
    }
    if(front2!=size)
    {
     for(j=front2;j>=rear2;j--)
      printf("\t%d",d_que[j]);
    }
  getch();
  return;
 }
}