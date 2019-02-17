#include<stdio.h>
#include<conio.h>
void main()
{
 int x=90,*p,**pt,***ptr;
 clrscr();
 printf("addr. of x=\t%u\n",&x);
 printf("addr. of *p=\t%u\n",&p);
 printf("addr. of **pt=\t%u\n",&pt);
 printf("addr. of ***ptr=%u\n",&ptr);
 p=&x;
 pt=&p;
 ptr=&pt;
 printf("\n\naddr. stored at p =\t%u\n",p);
 printf("addr. stored at pt =\t%u\n",pt);
 printf("addr. stored at ptr =\t%u\n\n",ptr);

 printf("vlaue of x=\t%d\n",x);
 printf("value of x=\t%d\n",*p);
 printf("value of x=\t%d\n",**pt);
 printf("value of x=\t%d",***ptr);
 getch();
}