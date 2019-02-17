#include<stdio.h>
#include<conio.h>
#include<alloc.h>
#define size 50
struct bst{
	    struct bst *left;
	    int data;
	    struct bst *right;
	   };
void insert(struct bst **);
void display_perorder(struct bst *);
void display_inorder(struct bst *);
void display_postorder(struct bst *);
void search(struct bst *);
void count(struct bst *);
void leafnodes(struct bst *);
void height(struct bst *);
struct bst *base=NULL;
void main()
{
 int choice;
 while(1)
 {
  clrscr();
  printf("<1> for insert data:\n");
  printf("<2> for display data in per-order:\n");
  printf("<3> for display data in in-order:\n");
  printf("<4> for display data in post-order:\n");
  printf("<5> for search an element:\n");
  printf("<6> for count:\n");
  printf("<7> for count leaf nodes:\n");
  printf("<8> for height of a tree:\n");
  printf("<0> for exit:\n\n");
  printf("enter your choice:\t");
  scanf("%d",&choice);
   switch(choice)
   {
    case 1: insert(&base);
		break;
    case 2: display_perorder(base);
		break;
    case 3: display_inorder(base);
		break;
    case 4: display_postorder(base);
		break;
    case 5: search(base);
		break;
    case 6: count(base);
		break;
    case 7: leafnodes(base);
		break;
    case 8: height(base);
		break;
    case 0: exit(0);
   }
  }
}
void insert(struct bst **start)
{
 struct bst *new;
 new=(struct bst *)malloc(sizeof(struct bst));
 printf("enter data:\t");
 scanf("%d",&new->data);
 new->left=NULL;
 new->right=NULL;
 if(*start==NULL)
  {
   base=new;
   printf("data is added.");
   getch();
   return;
  }
  else
  {
   struct bst *temp;
   int loop=1;
   temp=*start;
    while(loop)
     {
      if(new->data>temp->data && temp->right!=NULL)
       temp=temp->right;
      else if(new->data<temp->data && temp->left !=NULL)
       temp=temp->left;
      else
       loop=0;
     }
   if(new->data>temp->data)
    temp->right=new;
   else
    temp->left=new;
  }
 printf("\ndata is added.");
 getch();
 return;
}
void display_perorder(struct bst *start)
{
 if(start==NULL)
 {
  printf("list is empty....!");
  getch();
  return;
 }
 else
 {
  struct bst *stack[size];
  int tos=-1;
  while(1)
  {
    while(start!=NULL)
     {
      printf("%d\t",start->data);
      stack[++tos]=start;
      start=start->left;
     }
    if(tos==-1)
    {
     getch();
     return;
    }
   start=stack[tos--];
   start=start->right;
  }
 }
}
void display_inorder(struct bst *start)
{
  struct bst *stack[size];
  int tos=-1;
  if(start==NULL)
  {
   printf("list is empty....!");
   getch();
   return;
  }
  else
   {
    while(1)
     {
       while(start!=NULL)
	{
	  stack[++tos]=start;
	  start=start->left;
	}
      if(tos==-1)
      {
       getch();
       return;
      }
      start=stack[tos--];
      printf("%d\t",start->data);
      start=start->right;
     }
   }
}
void display_postorder(struct bst *start)
{
 if(start==NULL)
  {
   printf("list is empty....!");
   getch();
   return;
  }
  else
  {
    struct bst *stack1[size],*stack2[size],*temp;
    int tos1=-1,tos2=-1;
    if(start!=NULL)
     stack1[++tos1]=start;
      while(tos1>=0)
      {
       temp=stack1[tos1--];
       stack2[++tos2]=temp;
       if(temp->left!=NULL)
	stack1[++tos1]=temp->left;
       if(temp->right!=NULL)
	stack1[++tos1]=temp->right;
      }
     while(tos2!=-1)
     {
      temp=stack2[tos2--];
      printf("%d\t",temp->data);
     }
     getch();
   }
 }
void search(struct bst *start)
{
 if(start==NULL)
  {
   printf("\nlist is empty...!");
   getch();
   return;
  }
  else
  {
   int key;
   printf("\nenter key element:\t");
   scanf("%d",&key);
   while(1)
   {
     while(start!=NULL)
      {
       if(start->data==key)
	{
	 printf("\nsearch successful.");
	 getch();
	 return;
	}
       if(key>start->data)
	start=start->right;
       else
	start=start->left;
      }
    printf("\nsearch uncessfull .");
    getch();
    return;
   }
  }
}
void count(struct bst *start)
{
 if(start==NULL)
 {
  printf("list is empty...!");
  getch();
  return;
 }
 else
 {
  struct bst *stack[size];
  int tos=-1,count=0,even=0,odd=0,neg=0,pos=0;
   while(1)
    {
      while(start!=NULL)
       {
	 count++;
	  if(start->data<0)
	   neg++;
	   else
	   {
	     pos++;
	     if(start->data>0 && start->data %2==0)
	      even++;
	     else
	      odd++;
	 stack[++tos]=start;
	 start=start->left;
	   }
       }
      if(tos==-1)
       {
	printf("\ntotal no. of nodes:\t%d",count);
	printf("\ntotal no. of +ve nodes:\t%d",pos);
	printf("\ntotal no. of -ve nodes:\t%d",neg);
	printf("\ntotal no. of even nodes:\t%d",even);
	printf("\ntotal no. of odd no of nodes:\t%d",odd);
	getch();
	return;
       }
    start=stack[tos--];
    start=start->right;
   }
 }
}
void leafnodes(struct bst *start)
{
 if(start==NULL)
 {
  printf("list is empty....!");
  getch();
  return;
 }
 else
 {
  struct bst *stack[size];
  int tos=-1,count=0;
  while(1)
  {
    while(start!=NULL)
     {
      stack[++tos]=start;
      start=start->left;
     }
    if(tos==-1)
    {
     printf("total no. of leaf nodes :\t%d",count);
     getch();
     return;
    }
   start=stack[tos--];
    if(start->left==NULL && start->right==NULL)
     count++;
   start=start->right;
  }
 }
}
void height(struct bst *start)
{
 if(start==NULL)
 {
  printf("list is empty....!");
  getch();
  return;
 }
 else
 {
  struct bst *stack[size],*tmp;
  int tos=-1,ht=0,temp=0;
  while(1)
  {
    while(start!=NULL)
     {
      temp++;
      stack[++tos]=start;
      start=start->left;
     }
    if(tos==-1)
    {
     printf("height is :\t%d",ht);
     getch();
     return;
    }
   start=stack[tos--];
   start=start->right;
   if(start==NULL)
   temp--;
  }
 }
}