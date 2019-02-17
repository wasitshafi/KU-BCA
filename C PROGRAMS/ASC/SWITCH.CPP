#include<stdio.h>
#include<conio.h>
#include<string.h>
void main()
{
char arry[100];
int a=0,e=0,i=0,o=0,u=0,j,cons=0;
clrscr();
printf("enter the srting\t:");
gets(arry);
for(j=0;j<strlen(arry);j++)
	{
switch(arry[j])
{
case 'a':
a++;
	 break;
case 'e':
e++;
	break;
case 'i':
i++;
	 break;
case 'o':
o++;
	break;
case 'u':
u++;
break;
default :
cons=cons+1;
break;
}
	}
printf("no of vowel 'a' is:\t%d\n",a);
printf("no of vowel 'e' is:\t%d\n",e);
printf("no of vowel 'i' is:\t%d\n",i);
printf("no of vowel 'o' is:\t%d\n",o);
printf("no of vowel 'u' is:\t%d\n",u);
printf("no of consonsnt is:\t%d\n",cons);
getch();
}
