#include<stdio.h>
#include<conio.h>
void main()
 {
 struct str
  {
   int a;
   char name[20];
  };
 str x;
 clrscr();
 printf("enter name=\t");
 scanf("%s",x.name);
 printf("\nenter rollno=\t");
 scanf("%d",&x.a);
 printf("\n\nname=\t%s",x.name);
 printf("\nroll no. =\t%d",x.a);
 getch();
 }

