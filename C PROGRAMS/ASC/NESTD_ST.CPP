#include<stdio.h>
#include<conio.h>
void main()
 {
  struct  info{
  char name[20];
   struct roll_no{
   int rolln;
   }b[10];
   }a[10];
   int i;
   clrscr();
   for(i=0;i<1;i++)
   {
    printf ("\n enter the name of the student:\t");
    scanf("%s",&a[i].name);
    printf("\n enter the roll no of the student:\t");
    scanf("%d",&a[i].b[i].rolln);
    }
    clrscr();
    for(i=0;i<1;i++)
      {
    printf ("name of the student is :\t%s",a[i].name);
    printf("\nroll no of the student is :\t%d",a[i].b[i].rolln);
    }
    getch();
    }

