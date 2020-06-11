#include<stdio.h>
#include<conio.h>
#include<alloc.h>
#include<stdlib.h>
struct que
{
	int data;
	struct que *next;
};
void push(struct que **);
void pop(struct que **);
void peep(struct que *);
void main()
{
	struct que *base=NULL;
	int choice;
	while(1)
	{
		clrscr();
		printf("<1> for push.\n");
		printf("<2> for pop.\n");
		printf("<3> for peep.\n");
		printf("<0> for Exit.\n\n");
		printf("enter your choice:\t");
		scanf("%d",&choice);
		switch(choice)
		{
		 case 1:
			push(&base);
			break;

		 case 2:
			pop(&base);
			break;
		 case 3:
		       peep(base);
		       break;
		 case 0:
			exit(0);
	       }
	}
}
void push(struct que **start)
{
	struct que *new,*temp;
	new=(struct que *)malloc(sizeof(struct que));
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
			printf("\nelement is added into queues.");
			getch();
			return;
		}
		else
		{
			temp=*start;
			while(temp->next!=NULL)
				temp=temp->next;
			temp->next=new;
			printf("\nelement is added into queues.");
			getch();
			return;
		}
	}
}
void peep(struct que *start)
{
	if (start==NULL)
	{
		printf("\nqueue underflow.");
		getch();
		return;
	}
	else
	{
		printf("\n\nelements of are as:\t");
		while(start != NULL)
		{
		printf("\t%d",start->data);
		start=start->next;
		}
		getch();
		return;
	}
}
void pop(struct que **start)
{
	struct que *temp1;
   int pos;
    if(*start==NULL)
      {
	printf("\nqueue underflow.");
	getch();
	return;
      }
   else
   {
    temp1=*start;
    *start=(*start)->next;
    free(temp1);
    printf("\nelement is poped from queue.");
    getch();
    return;
    }
}