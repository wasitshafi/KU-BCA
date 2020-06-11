#include<stdio.h>
#include<conio.h>
#include<alloc.h>
#include<stdlib.h>
struct linked
{
	int data;
	struct linked *next;
};
void append(struct linked **);
void append_f(struct linked **);
void append_nth(struct linked **);
void display(struct linked *);
void displaynth(struct linked *);
void displayrev(struct linked *);
void del_first(struct linked **);
void del_last(struct linked **);
void del_nth(struct linked **);
void count(struct linked *);
void search(struct linked *);
void main()
{
	struct linked *base=NULL;
	int choice;
	while(1)
	{
		clrscr();
		printf("<1> for append.\n");
		printf("<2> for append at first.\n");
		printf("<3> for append at nth.\n");
		printf("<4> for view/display.\n");
		printf("<5> for display Nth node.\n");
		printf("<6> for display in reverse order.\n");
		printf("<7> for delete first node only.\n");
		printf("<8> for delete last  node only.\n");
		printf("<9> for delete nth node.\n");
		printf("<10> for count.\n");
		printf("<11> for search.\n");
		printf("<0> for Exit.\n\n");
		printf("enter your choice:\t");
		scanf("%d",&choice);
		switch(choice)
		{
		 case 1:
			append(&base);
			break;
		 case 2:
			append_f(&base);
			break;
		 case 3:
			append_nth(&base);
			break;
		 case 4:
			display(base);
			break;
		 case 5:
			displaynth(base);
			break;
		 case 6:
			displayrev(base);
			break;
		 case 7:
			del_first(&base);
			break;
		 case 8:
		       del_last(&base);
		       break;
		 case 9:
			del_nth(&base);
			break;
		 case 10:
			count(base);
			break;
		 case 11:
			search(base);
			break;
		 case 0:
			exit(0);
	       }
	}
}
void append(struct linked **start)
{
	struct linked *new,*temp;
	new=(struct linked *)malloc(sizeof(struct linked));
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
			printf("node is added");
			getch();
			return;
		}
		else
		{
			temp=*start;
			while(temp->next!=NULL)
				temp=temp->next;
			temp->next=new;
			printf("\nnode is added");
			getch();
			return;
		}
	}
}
void append_f(struct linked **start)
{
 struct linked *new;
 new=(struct linked *)malloc(sizeof(struct linked));

	if(new==NULL)
	 {
	  printf("\memory error....!");
	  getch();
	  return;
	 }
	   else
	   {
	     printf("\nenter a data:\t");
	     scanf("%d",&new->data);
	     new->next=*start;
	     *start=new;
	     printf("\nnode is added.");
	     getch();
	     return;
	   }
}
void append_nth(struct linked **start)
{
 int count,pos;
 struct linked *temp,*new;
 if(*start==NULL)
 {
  printf("\nlist is empty...!");
  getch();
  return;
 }
 else
  {
     printf("\nenter position:\t");
     scanf("%d",&pos);
     temp=*start;
     count=0;
      while(temp!=NULL)
       {
	 count++;
	 temp=temp->next;
       }
	if(pos>count)
	 {
	   printf("\ninvalid node...!");
	   getch();
	   return;
	 }
   new=(struct linked *)malloc(sizeof(struct linked));
   printf("\n\nenter data:\t");
   scanf("%d",&new->data);
	   if(pos==1)
	    {
	     new->next=*start;
	     *start=new;
	     printf("\nnode is added.");
	     getch();
	     return;
	    }
	    else
	    {
	      count=2;
	      temp=*start;
	       while(count<pos)
	       {
		count++;
		temp=temp->next;
	       }

	       new->next=temp->next;
	       temp->next=new;
	       printf("\nnode is added.");
	       getch();
	       return;
	    }
	   }
  }
void display(struct linked *start)
{
	if (start==NULL)
	{
		printf("\nlist is empty");
		getch();
		return;
	}
	else
	{
		printf("\n\nnode of linked are:");
		while(start != NULL)
		{
		printf("\t%d",start->data);
		start=start->next;
		}
		getch();
		return;
	}
}
void displaynth(struct linked *start)
{
 struct linked *temp=start;
 int count=0,pos;
 if(start==NULL)
  {
   printf("\nlist is empty.");
   getch();
   return;
  }
  else
  {
   printf("\nenter position:\t");
   scanf("%d",&pos);
    if(pos==1)
    {
     printf("data at %d position is:\t%d",pos,start->data);
     getch();
     return;
    }
    else
    {
     while(start!=NULL)
     {
      count++;
      start=start->next;
     }
     if(pos>count)
      {
       printf("\ninvlaid node....!");
       getch();
       return;
      }
     else
     {
      count=1;
      printf("\ndata at %d position is:\t",pos);
      while(temp!=NULL)
      {
       if(count==pos)
	{
	 printf("%d",temp->data);
	 getch();
	 return;
	}
       count++;
       temp=temp->next;
      }
    }
   }
 }
}
void displayrev(struct linked *start)
{
 struct linked *temp=start;
  int i=0,count=0,*ptr;
     if(start==NULL)
       {
	 printf("\nlist is empty....!");
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
	 printf("\nnode of linked list in reverse order are as:\n");
	do
	{
	 i--;
	 printf("\t%d",*(ptr+i));
	}while(i>0);
	getch();
      }
}
void del_first(struct linked **start)
{
    struct linked *temp1;
    if(*start==NULL)
      {
	printf("\nlist is empty.");
	getch();
	return;
      }
   else
   {
    temp1 = *start;
    *start =(*start)->next;
       free(temp1);

    printf("\nnode is deleted");
    getch();
    return;
    }
}
void del_last(struct linked **start)
{
 struct linked *temp1,*temp2;
 if(*start==NULL)
 {
  printf("\nlist is empty.");
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
	printf("node is deleted.");
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
	printf("node is deleted");
	getch();
	return;
       }
   }
}
void del_nth(struct linked **start)
{
int count=0,pos;
struct linked *temp1,*temp2;
 if(*start==NULL)
 {
  printf("list is empty.");
  getch();
  return;
 }
 else
  {
   printf("enter position:\t");
    scanf("%d",&pos);
    if(pos==1)
    {
     temp1=*start;
     *start=(*start)->next;
     free(temp1);
     printf("\nnode is deleted.");
     getch();
     return;
    }
   else
   {
    temp1=*start;
     while(temp1!=NULL)
      {
       count++;
      temp1=temp1->next;

      }
       if(pos>count)
	{
	 printf("\ninvalid position");
	 getch();
	 return;
	}
       else
	{
	 temp1=*start;
	 count=2;
	  while(count<pos)
	   {
	    temp1=temp1->next;
	    count++;
	   }
	 temp2=temp1->next;
	 temp1->next=temp2->next;
	 free(temp2);
	 printf("\nnode is deleted.");
	 getch();
	 return;
	}
     }
   }
}
void count(struct linked *start)
{
	   int total=0,even=0,odd=0,prm=0,cmp=0,i;
     if (start==NULL)
	{
		printf("\nlist is empty");
		getch();
		return;
	}
	else
	{
		while(start != NULL)
		{
			if(start->data%2==0 && start->data>0)
			  even++;
			  else if(start->data>0)
			  odd++;
		i=2;
				while(start->data%i!=0 && start->data>1)
				 i++;

					if(start->data==i)
					 prm++;
					 else if(start->data>1)
					 cmp++;
		start=start->next;
		total++;
		}
		printf("\n\ntotal number of nodes are=\t%d",total);
		printf("\ntotal number of even node elements are=\t%d",even);
		printf("\ntotal number of odd node elements are=\t%d",odd);
		printf("\ntotal number of prime node elements are=%d",prm);
		printf("\ntotal number of composite node elements are=%d",cmp);
		getch();
		return;
	}

}
void search(struct linked *start)
{
 int key,i=0;

  if(start==NULL)
  {
   printf("list is empty....!");
   getch();
   return;
  }
  else
  {
	printf("\n enter key element:\t");
	scanf("%d",&key);
		while(start != NULL)
		{
		  i++;
			if(start->data==key)
			{
				printf("\nsearch successfull.");
				printf("\nelement found in %d node.",i);
				getch();
				return;
			}
		 start=start->next;
		}
		printf("\nsearch uncessfull\n");
	       getch();
		return;
  }
}