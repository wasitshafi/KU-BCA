#include<stdio.h>
#include<conio.h>
#include<alloc.h>
#include<stdlib.h>
#include<ctype.h>
struct doubly{
		struct doubly *pre;
		int data;
		struct doubly *next;
	      };
void append(struct doubly **);
void append_first(struct doubly **);
void append_nth(struct doubly **start);
void display(struct doubly *);
void display_nth(struct doubly *start);
void display_rev(struct doubly *start);
void del_f(struct doubly **start);
void del_l(struct doubly **start);
void del_nth(struct doubly **start);
void del_nth_2(struct doubly **start);
void search(struct doubly *start);
void count(struct doubly *start);
void main()
{
 struct doubly *base=NULL;
  int choice;
   while(1)
     {
       clrscr();
       printf("<1> for append:\n");
       printf("<2> for append at first:\n");
       printf("<3> for append at nth:\n");
       printf("<4> for display:\n");
       printf("<5> for display nth:\n");
       printf("<6> for display reverse:\n");
       printf("<7> for delete first:\n");
       printf("<8> for delete last:\n");
       printf("<9> for delete nth:\n");
       printf("<10> for count:\n");
       printf("<11> for search:\n");
       printf("<0> for exit:\n\n");
       printf("enter your choice:\t");
       scanf("%d",&choice);
       switch(choice)
	 {
	   case 1: append(&base);
		break;
	   case 2: append_first(&base);
		break;
	   case 3: append_nth(&base);
		break;
	   case 4: display(base);
		break;
	   case 5: display_nth(base);
		break;
	   case 6: display_rev(base);
		break;
	   case 7: del_f(&base);
		break;
	   case 8: del_l(&base);
		break;
	   case 9: del_nth(&base);
		break;
	   case 10:count(base);
		break;
	   case 11:search(base);
		break;
	   case 0: exit(1);
	 }
     }
}
void append(struct doubly **start)
{
   struct doubly *new,*temp;
   new=(struct doubly *)malloc(sizeof(struct doubly));
   if(new==NULL)
      {
       printf("\n\nmemory error..!");
       getch();
       return;
      }
   else
    {
      printf("\nenter data:\t");
      scanf("%d",&new->data);
      new->next=NULL;
	 if(*start==NULL)
	  {
	     new->pre=NULL;
	     *start=new;
	     printf("\nnode is added.");
	     getch();
	     return;
	  }
	 else
	  {
	     temp=*start;
	       while(temp->next!=NULL)
		 {
		   temp=temp->next;
		 }
	     new->pre=temp;
	     temp->next=new;
	     printf("\nmode is added.");
	     getch();
	     return;
	   }
    }
}
void append_first(struct doubly **start)
{
 if(start==NULL)
  {
   printf("\nlist is empty....!");
   getch();
   return;
  }
  else
  {
    struct doubly *new;
    new=(struct doubly *)malloc(sizeof(struct doubly));
    printf("enter data:\t");
    scanf("%d",&new->data);
    new->next=*start;
    new->pre=NULL;
    *start=new;
    printf("node is added.");
    getch();
    return;
   }
}
void append_nth(struct doubly **start)
{
 struct doubly *new,*temp1,*temp2;
 int count=0,pos;
 if(start==NULL)
  {
   printf("\nlist is empty.");
   getch();
   return;
  }
  new=(struct doubly *)malloc(sizeof(struct doubly));
    if(new==NULL)
      {
	printf("\nmemroy error...!");
	getch();
	return;
       }
   else
	{
	 printf("\nenter position:\t");
	 scanf("%d",&pos);
	 temp1=*start;
	 while(temp1!=NULL)
	    {
	     temp1=temp1->next;
	     count++;
	    }
	      if(pos>count)
	       {
		printf("\ninvalid position....!");
		getch();
		return;
	       }
		 printf("\nenter data:\t");
		 scanf("%d",&new->data);

		if(pos==1)
		 {
		   new->next=*start;
		   (*start)->pre=new;
		   *start=new;
		   new->pre=NULL;
		   printf("\nnode is added.");
		   getch();
		 }
		 else
		   {
		    count=2;
		    temp2=*start;
		    while(count<pos)
		     {
		      temp2=temp2->next;
		      count++;
		      }
			temp2->next->pre=new;
			new->next=temp2->next;
			new->pre=temp2;
			temp2->next=new;
			printf("\nnode is added.");
			getch();
			return;
		   }
	  }
      }

void display(struct doubly *start)
{
 if(start==NULL)
   {
    printf("\n\nlist list empty.");
    getch();
    return;
   }
  else
   {
     printf("\nnodes of linked are:");
     while(start!=NULL)
	 {
	  printf("\t%d",start->data);
	  start=start->next;
	 }
     getch();
     return;
   }
}
void display_nth(struct doubly *start)
{
 if(start==NULL)
 {
  printf("\n\nlist is empty");
  getch();
  return;
 }
  else
   {
    int count=0,pos;
    struct doubly *temp;
    printf("\nenter position:\t");
    scanf("%d",&pos);
    if(pos==1)
    {
     printf("\ndata at 1st node is:\t%d",start->data);
     getch();
     return;
    }
     else
      {
       struct doubly *temp;
       temp=start;
       while(temp!=NULL)
	{
	  count++;
	  temp=temp->next;

	}

	  if(pos>count)
	   {
	     printf("invalid node....!");
	     getch();
	     return;
	   }
	  else
	   {
	    count=2;
	    while(count<pos)
	     {
	      count++;
	      start=start->next;
	     }
	    printf("\ndata at %dth node is :\t%d",pos,start->next->data);
	    getch();
	    return;
	   }
	}
     }
}
void display_rev(struct doubly *start)
{
 if(start==NULL)
 {
  printf("\nlist is empty...!");
  getch();
  return;
 }
 else
 {
  if(start->next==NULL)
  {
   printf("\nnode of linked list in reverse order is:\t%d",start->data);
   getch();
   return;
  }
  else
   {
    while(start->next!=NULL)
      {
	start=start->next;
      }
    printf("\nnodes of linked list in reverse order are:\t");
      while(start!=NULL)
       {
	 printf("%d\t",start->data);
	 start=start->pre;
       }
       getch();
       return;
    }
   }
}
void del_f(struct doubly **start)
{
  if(*start==NULL)
   {
    printf("\nlist is empty...!");
    getch();
    return;
   }
  else
    {
      struct doubly *temp;
       if((*start)->next==NULL)
	{
	 temp=*start;
	 *start=NULL;
	 free(temp);
	 printf("\nfirst node is deleted.");
	 getch();
	 return;
	}
       else
	 {
	   temp=*start;
	   *start=(*start)->next;
	   (*start)->pre=NULL;
	   free(temp);
	   printf("\nfirst node is deleted.");
	   getch();
	   return;
	 }
     }
}
void del_l(struct doubly **start)
{
 if(*start==NULL)
 {
  printf("\nlist is empty...!");
  getch();
  return;
 }
 else
 {
   struct doubly *temp;
    if((*start)->next==NULL)
      {
       temp=*start;
       *start=NULL;
       free(temp);
       printf("last node deleted");
       getch();
       return;
      }
     else
       {
	while((*start)->next->next!=0)
	{
	 *start=(*start)->next;
	}
	temp=(*start)->next;
	(*start)->next=NULL;
	free(temp);
	printf("\nlast node is deleted.");
	getch();
	return;
       }
   }
}




void del_nth(struct doubly **start)
{
  int pos,count=0;
  struct doubly *temp1,*temp2,*temp3;
  temp1=*start;
  temp2=*start;
    if(*start==NULL)
      {
       printf("\nlist is empty.");
       getch();
       return;
      }
	else
	 {
	    printf("\n\nenter position:\t");
	    scanf("%d",&pos);
	       while(temp1!=NULL)
		{
		  temp1=temp1->next;
		   count++;
		}
		   if(pos>count)
		     {
		       printf("\ninvalid position..!");
		       getch();
		       return;
		     }
		       if(pos==1)
			{
			  temp2=*start;
			  *start=(*start)->next;
			    if(*start!=NULL)
			      {
				 (*start)->pre=NULL;
				  free(temp2);
				  printf("\nnode is deleted.");
				  getch();
				  return;
			       }
			    else
				{
				   free(temp2);
				   printf("\nnode is deleted.");
				   getch();
				   return;
				}
		       }
			else
			 {
			     count=1;
			     while(count<pos-1)
			       {
				temp2=temp2->next;
				count++;
			       }
			       if(temp2->next->next==NULL)
				 {
				  temp3=temp2->next;
				  temp2->next=NULL;
				  free(temp3);
				  printf("\nnode is deleted.");
				  getch();
				  return;
				 }
			       else
				 {
				  temp3=temp2->next;
				  temp2->next=temp3->next;
				  temp2->next->pre=temp2->pre;
				  free(temp3);
				  printf("\nnode is deleted.");
				  getch();
				  return;
				 }
			   }
		}
}
void del_nth_2(struct doubly **start)
{
  int pos,count=0;
  struct doubly *temp1,*temp2,*temp3;
    if(*start==NULL)
      {
       printf("\nlist is empty.");
       getch();
       return;
      }
	else
	 {
	    printf("\n\nenter position:\t");
	    scanf("%d",&pos);
	    temp1=*start;
	       while(temp1!=NULL)
		{
		  temp1=temp1->next;
		   count++;
		}
		   if(pos>count)
		     {
		       printf("\ninvalid position..!");
		       getch();
		       return;
		     }
		       if(pos==1)
			{
			  temp2=*start;
			  *start=(*start)->next;
			    if(*start!=NULL)
			      {
				 (*start)->pre=NULL;
				  free(temp2);
				  printf("\nnode is deleted.");
				  getch();
				  return;
			       }
				else
				 {
				   free(temp2);
				   printf("\nnode is deleted.");
				   getch();
				   return;
				  }
			}
				   else
				     {
					temp2=*start;
					count=2;
					  while(count<pos)
					     {
					       temp2=temp2->next;
					       count++;
					     }
					  temp3=temp2->next;
					  temp2->next=temp3->next;
					    if(temp2->next!=NULL)
					     temp2->next->pre=temp2;
					  free(temp3);
					  printf("node is deleted");
					  getch();
					  return;
				       }
	}
}
void search(struct doubly *start)
{
 if(start==NULL)
 {
  printf("\nlist is empty....!");
  getch();
  return;
 }
 else
 {
  int key,i;
  printf("\nenter key element:\t");
  scanf("%d",&key);
  for(i=1;start!=NULL;i++)
  {
    if(start->data==key)
    {
      printf("\nsearch sucessfull.\nelement found in %d node.",i);
      getch();
      return;
    }
    start=start->next;
  }
  printf("\nsearch unsuccessfull.");
  getch();
  return;
 }
}
void count(struct doubly *start)
{
 if(start==NULL)
  {
   printf("\n\nlist is empty....!");
   getch();
   return;
  }
 else
 {
   int count=0,odd=0,even=0,prm=0,i;
   while(start!=NULL)
   {
     if(start->data>1)
     {
      i=2;
      while(start->data%i!=0)
       i++;
	if(i==start->data)
	prm++;
     }
     if(start->data>0)
	{
	 if(start->data%2==0)
	   even++;
	  else
	   odd++;
	}
    count++;
    start=start->next;
   }
   printf("\ntotal no. of nodes are:\t%d",count);
   printf("\ntotal no. of even nodes are:\t%d",even);
   printf("\ntotal no. of odd nodes are:\t%d",odd);
   printf("\ntotal no. of prime nodes are:\t%d",prm);
   getch();
   return;
  }
}