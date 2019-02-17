#include<stdio.h>
#include<conio.h>
void main()
{
struct std_info{
	 long rolln;
	 char name[20];
	 float marks;
      }std1,std2;
      clrscr();
	 printf("\n\nenter the name of student\n\n");
	 scanf("%s",&std1.name);
	 printf("\n\nenter the roll number of student\n\n");
	 scanf("%ld",&std1.rolln);
	 printf("\n\nenter the marks of student\n\n");
	 scanf("%f",&std1.marks);
	 clrscr();
	 printf("\n\n\troll no.\tname\tmarks\n\n");
	 printf("\t%ld\t\t%s\t%f",std1.rolln,std1.name,std1.marks);

	   /*or*/

	 //   printf("\t%d",std1.rolln);
	   // printf("\t%s",std1.name);
	   // printf("\t%f",std1.marks);
	 getch();
	 }