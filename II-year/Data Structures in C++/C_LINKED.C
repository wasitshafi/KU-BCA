#include<stdio.h>
#include<conio.h>
#include<alloc.h>
struct circular{
		  int data;
		  struct circular *next;
		};
void append(struct circular **start);
void append_f(struct circular **start);
void append_nth(struct circular **start);
void display(struct circular *start);
void display_nth(struct circular *start);
void display_rev(struct circular *start);
void del_f(struct circular **start);
void del_l(struct circular **start);
void del_nth(struct circular **start);
void count(struct circular *start);
void search(struct circular *start);
void main()
{
  int choice;
  struct circular *base=NULL;
 while(1)
 {
  clrscr();
  printf("<1> for append.\n");
  printf("<2> for append at first.\n");
  printf("<3> for append at nth.\n");
  printf("<4> for display.\n");
  printf("<5> for display nth.\n");
  printf("<6> for display in reverse order.\n");
  printf("<7> for delete first.\n");
  printf("<8> for delete last.\n");
  printf("<9> for delete nth.\n");
  printf("<10> for count.\n");
  printf("<11> for search.\n");
  printf("<0> for exit:");
  printf("\n\nenter your choice:\t");
  scanf("%d",&choice);
  switch(choice)
  {
   case 1: append(&base);
	   break;
   case 2: append_f(&base);
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
   case 8 :del_l(&base);
	   break;
   case 9: del_nth(&base);
	   break;
   case 10:count(base);
	   break;
   case 11:search(base);
	   break;
   case 0: exit(0);
  }
 }
}
void append(struct circular **start)
{
  struct circular *new;
  new=(struct circular *)malloc(sizeof(struct circular));
  if(new==NULL)
  {
   printf("memory error...!");
   getch();
   return;
  }
  else
  {
   printf("\n\nenter data:\t");
   scanf("%d",&new->data);
    if(*start==NULL)
     {
      *start=new;
      new->next=*start;
      printf("\nnode is added.");
      getch();
      return;
     }
    else
    {
     struct circular *temp;
     temp=*start;
       while(temp->next!=*start)
	  temp=temp->next;
     new->next=*start;
     temp->next=new;
     printf("\nnode is added.");
     getch();
     return;
    }
  }
}
void append_f(struct circular **start)
{
   struct circular *new;
   new=(struct circular *)malloc(sizeof(struct circular));
   printf("\nenter data:\t");
   scanf("%d",&new->data);
   if(*start==NULL)
   {
    *start=new;
    new->next=new;
    printf("\nnode is added.");
    getch();
    return;
   }
   if((*start)->next==*start)
    {
      new->next=*start;
      (*start)->next=new;
      *start=new;
      printf("\nnode is added.");
      getch();
      return;
    }
    else
    {
     struct circular *temp;
     temp=*start;
     new->next=*start;
      while(temp->next!=*start)
	temp=temp->next;
     temp->next=new;
     *start=new;
     printf("node is added.");
     getch();
     return;
    }
}
void append_nth(struct circular **start)
{
   if(*start==NULL)
    {
     printf("\nlist is empty...!");
     getch();
     return;
    }
     else
    {
      struct circular *temp1,*temp2;
      int pos,count=0;
      printf("\nenter position:\t");
      scanf("%d",&pos);
      temp1=*start;
      temp2=*start;
	do{
	   count++;
	   temp1=temp1->next;
	   }while(temp1!=*start);
      if(pos>count)
       {
	printf("invalid node...!");
	getch();
	return;
       }
       else
	{
	 struct circular *new;
	 new=(struct circular *)malloc(sizeof(struct circular));
	 printf("\nenter data:\t");
	 scanf("%d",&new->data);
	 if(pos==1)
	   {
	    new->next=*start;
	       do{
		  temp2=temp2->next;
		 }while(temp2->next!=*start);
	    *start=new;
	    temp2->next=new;
	    printf("\nnode is added.");
	    getch();
	    return;
	   }
	   else
	    {
	     count=2;
	      while(count<pos)
		{
		 temp2=temp2->next;
		 count++;
		}
	     new->next=temp2->next;
	     temp2->next=new;
	     printf("\nnode is added.");
	     getch();
	     return;
	    }
	}
     }
}
void display(struct circular *start)
{
 if(start==NULL)
 {
  printf("\nlist is empty.");
  getch();
  return;
 }
 else
 {
   printf("nodes of linked list are:");
    if(start->next==start)
     {
      printf("\t%d",start->data);
      getch();
      return;
     }
    else
     {
      struct circular *temp;
      temp=start;
      do{
	 printf("\t%d",temp->data);
	 temp=temp->next;
	 }while(temp!=start);
      getch();
      return;
     }
   }
}
void display_nth(struct circular *start)
{
 if(start==NULL)
 {
  printf("\nlist is empty....!");
  getch();
  return;
 }
 else
 {
   int pos;
   printf("enter position:\t");
   scanf("%d",&pos);
    if(pos==1)
     {
       printf("element at %d position is:\t%d",pos,start->data);
       getch();
       return;
     }
    else
      {
       int count=0;
       struct circular *temp;
       temp=start;
	 do{
	     count++;
	     temp=temp->next;
	    }while(temp!=start);
	   if(pos>count)
	    {
	     printf("\n\ninvalid position.");
	     getch();
	     return;
	    }
	   else
	    {
	     count=2;
	      while(pos>count)
	       {
		start=start->next;
		count++;
	       }
	     printf("\nelement at %d position is:\t%d",pos,start->next->data);
	     getch();
	     return;
	    }
      }
 }
}
void display_rev(struct circular *start)
{
 if(start==NULL)
 {
  printf("\n\nlist is empty....!");
  getch();
  return;
 }
  else
  {
   int count=0,i=0,*ptr;
   struct circular *temp;
   temp=start;
    do{
       count++;
       temp=temp->next;
      }while(temp!=start);
   ptr=(int *)malloc(count*sizeof(int));
   temp=start;
     do{
	*(ptr+i)=temp->data;
	temp=temp->next;
	i++;
       }while(temp!=start);
   printf("\nelements in reverse order are as:");
      do{
	  i--;
	  printf("\t%d",*(ptr+i));
	}while(i>0);
   getch();
   return;
  }
}
void del_f(struct circular **start)
{
 if(*start==NULL)
 {
  printf("\nlist is empty.");
  getch();
  return;
 }
 else
 {
   struct circular *temp1,*temp2;
    if((*start)->next==*start)
     {
      temp1=*start;
      *start=NULL;
      free(temp1);
      printf("\nnode is deleted.");
      getch();
      return;
     }
    else
     {
      temp1=*start;
	  while(temp1->next!=*start)
	  {
	   temp1=temp1->next;
	  }
      temp2=*start;
      *start=(*start)->next;
      temp1->next=*start;
      free(temp2);
      printf("\nnode is deleted.");
      getch();
      return;
     }
   }
}
void del_l(struct circular **start)
{
 if(*start==NULL)
 {
  printf("\nlist is empty...!");
  getch();
  return;
 }
 else
   {
    struct circular *temp1,*temp2;
     if((*start)->next==*start)
     {
      temp1=*start;
      *start=NULL;
      free(temp1);
      printf("\nlast node is deleted.");
      getch();
      return;
     }
    else
     {
      temp1=*start;
       while(temp1->next->next!=*start)
	temp1=temp1->next;
      temp2=temp1->next;
      temp1->next=*start;
      free(temp2);
      printf("\nlast node deleted.");
      getch();
      return;
     }
   }
}
void del_nth(struct circular **start)
{
 if(*start==NULL)
 {
  printf("\nlist is empty...!");
  getch();
 }
 else
 {
  int pos,count=0,i;
  struct circular *temp1,*temp2;
  printf("\nenter position:\t");
  scanf("%d",&pos);
   if(pos==1)
    {
     if((*start)->next==*start)
      {
       temp1=*start;
       *start=NULL;
       free(temp1);
       }
   else
   {
	temp1=*start;
	 do{
	     temp1=temp1->next;
	   }while(temp1->next!=*start);
	temp1->next=(*start)->next;
	temp2=*start;
	*start=(*start)->next;
	free(temp2);
       }
    printf("\nnode is deleted.");
    getch();
    return;
   }
   else
    {
     temp1=*start;
      do{
	  count++;
	  temp1=temp1->next;
	}while(temp1!=*start);
       if(pos>count)
	{
	 printf("\ninvalid position.");
	 getch();
	 return;
	}
       else
       {
	count=2;
	temp1=*start;
	do{
	   temp1=temp1->next;
	   count++;
	  }while(count<pos);
	if(temp1->next->next==*start)
	 {
	   temp2=temp1->next;
	   temp1->next=*start;
	   free(temp2);
	 }
	else
	 {
	  temp2=temp1->next;
	  temp1->next=temp1->next->next;
	  free(temp2);
	 }
       printf("\nnode is deleted.");
       getch();
       return;
      }
     }
   }
}

void count(struct circular *start)
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
   struct circular *temp;
   temp=start;
   do{
      if(temp->data>1)
	{
	 i=2;
	 while(temp->data%i!=0)
	   i++;
	   if(i==temp->data)
	   prm++;
	}
      if(temp->data>0)
	{
	 if(temp->data%2==0)
	  even++;
	 else
	  odd++;
	}
    count++;
    temp=temp->next;
   }while(temp!=start);
   printf("\ntotal no. of nodes are:\t%d",count);
   printf("\ntotal no. of even nodes are:\t%d",even);
   printf("\ntotal no. of odd nodes are:\t%d",odd);
   printf("\ntotal no. of prime nodes are:\t%d",prm);
   getch();
   return;
  }
}
void search(struct circular *start)
{
 if(start==NULL)
 {
  printf("\nlist is empty...!");
  getch();
  return;
 }
 else
 {
  int key,i=0;
  struct circular *temp;
  temp=start;
  printf("\nenter key element:\t");
  scanf("%d",&key);
   do{
      i++;
       if(temp->data==key)
	{
	 printf("\n\nsearch successfull.\nelement found in %d node",i);
	 getch();
	 return;
	}
	temp=temp->next;
     }while(temp!=start);
  printf("\n\nsearch unsuccessfull.");
  getch();
  return;
 }
}