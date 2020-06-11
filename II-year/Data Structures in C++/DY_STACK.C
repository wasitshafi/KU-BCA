#include<stdio.h>
#include<conio.h>
#include<alloc.h>
#include<stdlib.h>
struct stack
{
	int data;
	struct stack *next;
};
void push(struct stack **);
void pop(struct stack **);
void peep(struct stack * );
void del_nth(struct stack **);
void main()
{
	struct stack *base=NULL;
	int choice;
	while(1)
	{
		clrscr();
		printf("<1> for push.\n");
		printf("<2> for pop.\n");
		printf("<3> for peep.\n");
		printf("<4> for delete nth element.\n");
		printf("<0> for Exit.\n\n");
		printf("enter your choice:\t");
		scanf("%d",&choice);

		switch(choice)
		{
		 case 1:
			push(&base);
			break;
		 case 2:pop(&base);
			break;
		 case 3:
			peep(base);
			break;
		 case 4:
			del_nth(&base);
			break;
		 case 0:
			exit(0);
	       }
	}
}
void push(struct stack **start)
{
	struct stack *new,*temp;
	new=(struct stack *)malloc(sizeof(struct stack));
	if (new==NULL)
	{
		printf("\n memory error...!\n");
		getch();
		return;
	}
	    else
	       {
		printf("\n enter data\t");
		scanf("%d",&new->data);
		new->next=NULL;
		if(*start==NULL)
		{
			*start=new;
			printf("element pushed into stack.");
			getch();
			return;
		}
		else
		{
			temp=*start;
			while(temp->next!=NULL)
				temp=temp->next;
			temp->next=new;
			printf("\nelement pushed in stack.");
			getch();
			return;
		}
	}
}
void peep(struct stack *start)
{
 struct stack *temp=start;
  int i=0,count=0,*ptr;
     if(start==NULL)
       {
	 printf("\nstack underflow.....!");
	 getch();
	 return;
       }
       else
       {
	 while(temp!=NULL)
	 {
	  count++;
	  temp=temp->next;
	 }
	ptr=(int *)malloc(count*sizeof(int));
	i=0;
	while(start!=NULL)
	 {
	  *(ptr+i)=start->data;
	  start=start->next;
	  i++;
	 }
	 printf("\elements of stack are as:\n");
	do
	{
	 i--;
	 printf("\t%d",*(ptr+i));
	}while(i>0);
	getch();
    }
}
void pop(struct stack **start)
{
 struct stack *temp1,*temp2;
 if(*start==NULL)
 {
  printf("\nstack underflow.....!");
  getch();
  return;
 }
 else
   {
      if((*start)->next==NULL)
       {
	temp1=*start;
	*start=NULL;
	free(temp1);
	printf("\nelement poped.");
	getch();
	return;
       }
      else
       {
	temp1=*start;
	   while(temp1->next->next!=NULL)
	    {
	     temp1=temp1->next;
	    }
	temp2=temp1->next;
	temp1->next=NULL;
	free(temp2);
	printf("\nelement poped");
	getch();
	return;
       }
   }
}
void del_nth(struct stack **start)
{
int count=0,pos;
struct stack *temp1,*temp2;
temp1=*start;
 if(*start==NULL)
 {
  printf("stack underflow...!");
  getch();
  return;
 }
 else
  {
	while(temp1!=NULL)
	   {
	     count++;
	     temp1=temp1->next;
	    }
    printf("enter position:\t");
    scanf("%d",&pos);
	 if(pos>count)
	  {
	    printf("\ninvalid position");
	    getch();
	    return;
	  }
	  else
	   {
	      if(pos==1)
		{
		 temp1=*start;
		 *start=(*start)->next;
		 free(temp1);
		 printf("\nelement deleted");
		 getch();
		 return;
		}
	       else
	       {
		count=2;
		temp1=*start;
		  while(count<pos)
		    {
		     temp1=temp1->next;
		      count++;
		    }
		temp2=temp1->next;
		temp1->next=temp2->next;
		free(temp2);
		printf("\nelement deleted.");
		getch();
		return;
	       }
	   }
  }
}