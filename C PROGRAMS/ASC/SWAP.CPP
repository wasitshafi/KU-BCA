#include<stdio.h>
#include<conio.h>
void main()
{
	int a,b,c,d,e,f;
	printf("enter the values\n");
	scanf("%d""%d""%d""%d",&a,&b,&c,&d);
	printf("\n  the following values are as follows\t \na=%d""\t\nb=%d""\t\nc=%d""\t\nd=%d",a,b,c,d);
	e=a;
	a=b ;
	f=c;
	c=d  ;
	d=f    ;
	b=e   ;
	printf("\n   after swaping the values are as \t\na=%d""\t\nb=%d""\t\nc=%d""\t\nd=%d",a,b,c,d);
	getch();
	clrscr();
}