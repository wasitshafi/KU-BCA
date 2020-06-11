#include<stdio.h>
#include<conio.h>
#include<string.h>
int stk[10];
int top=-1;
void push(int);
int pop();
void main()
{
  char postfix[10];
  int len,val,i,opr1,opr2,res;
  clrscr();
  printf("Enter the prefix Expression : ");
  gets(postfix);
  len=strlen(postfix);
  for(i=0;i<len;i++)
    {
     switch(get_type(postfix[i]))
      {
	case 0:
	val=(int)(postfix[i] -48);        //  type-casting
	push(val);
	break;

       case 1: opr1=pop();
	       opr2=pop();

	  switch(postfix[i])
	   {
	    case '+': res=opr1+opr2;
		   break;
	    case '-': res=opr1-opr2;
		   break;
	    case '*': res=opr1*opr2;
		   break;
	    case '/': res=opr1/opr2;
		   break;
	    case '%': res=opr1%opr2;
		   break;
	   }
     push(res);
     }
  }
  printf("Result is %d\n",stk[0],stk[1]);
  getch();
}


//********************************************************************
void push(int val)
{
stk[++top]=val;
}


//**********************************************************************
int pop()
{
return(stk[top--]);
}


//**********************************************************************
int get_type(char c)
{
if(c=='+'||c=='-'||c=='*'||c=='/'||c=='%')
return 1;
else
return 0;
}