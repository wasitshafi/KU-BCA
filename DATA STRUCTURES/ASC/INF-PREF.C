#include<stdio.h>
#include<conio.h>
#define size 20
int ot_stk[size],od_stk[size];
int ot_tos=-1,od_tos=-1;
int check(char);
void main()
{
 int i=0,j=0;
 char str[30];
 clrscr();
 printf("\n\nenter infix expression:\t");
 scanf("%s",str);
 while(str[i]!='\0')
 {
 if(str[i]>=48 && str[i]<=57) //means str[i] == 0-9
   od_stk[++od_tos]=str[i];
  else
  {
     // while(ot_tos!=-1 && check(str[i])<=check(ot_stk[ot_tos]))
      while(ot_tos!=-1 && str[i] != '(' && str[i]!=')'&& check(str[i])<=check(ot_stk[ot_tos]))
       {
	od_stk[++od_tos]=ot_stk[ot_tos--];
       }
       if(str[i]==')')
       {
	 do{
	    od_stk[++od_tos]=ot_stk[ot_tos--];
	   }while(ot_stk[ot_tos]!='(');
	 --ot_tos;
       }

       else
      ot_stk[++ot_tos]=str[i];
   }
   i++;
 }
 while(ot_tos!=-1)
   od_stk[++od_tos]=ot_stk[ot_tos--];
  for(j=od_tos;j>=0;j--)
   printf("%c",od_stk[j]);
  getch();
}
int check(char ch)
{
 int p;
 switch(ch)
 {
  case '(': p=0;
		break;
  case '-': p=1;
		break;
  case '+': p=1;
		break;
  case '*': p=2;
		break;
  case '/': p=3;
		break;
  case '$': p=4;
		break;
  case '^': p=4;
		break;
 }
  return(p);
 }