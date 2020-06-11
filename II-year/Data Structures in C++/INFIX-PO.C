#include<stdio.h>
#include<conio.h>
#include<string.h>
#define size 20
int ot_stk[size],od_stk[size];
int ot_tos=-1,od_tos=-1;
int check(char);
int *neww;
int main()
{
 int i=0,j=0,len,k,temp;
 char str[30];
 //clrscr();
 printf("\n\nenter infix expression:\t");
 scanf("%s",str);
 len=strlen(str);
 len--;

 for(i=len;i>=0;i--)
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
       if(str[i]=='(')
       {
	 do{
	    od_stk[++od_tos]=ot_stk[ot_tos--];
	   }while(ot_stk[ot_tos]!=')');
	 --ot_tos;
       }

       else
      ot_stk[++ot_tos]=str[i];
   }

 }



 while(ot_tos!=-1)
   od_stk[++od_tos]=ot_stk[ot_tos--];




  neww=(char *)malloc(od_tos+1*sizeof(char));
  temp=od_tos;
  for(k=0;k<=od_tos;k++,temp--)
  *(neww+k)=od_stk[temp];    //assigning elements into new memory locations

  k=0;
  do{
			 //printing elements...
      printf("%c",*(neww+k));
    }while(k<=od_tos);
 /* for(j=0;j<=od_tos;j++)
     printf("%c",od_stk[j]); */
  getch();
  
  return 0;
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
  case '/': p=2;
		break;
  case '$': p=3;

		break;
  case '^': p=3;
		break;
 }
  return(p);

 }
