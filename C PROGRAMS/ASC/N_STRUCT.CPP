#include<stdio.h>
#include<conio.h>
void main()
 {
  struct info{
  char name[20];
  int marks;
  int roll_no;
    struct date_of_brth{
     char date[10];
     char time[10];
		       }b[50];
	      }a[50];
  int n,i;
  clrscr();
  printf("\nenter the no. of students:\t");
  scanf("%d",&n);
  for(i=0;i<n;i++)
  {
   printf("\nenter the name :\t");
   scanf("%s",&a[i].name);
   printf("\nenter the roll no of the student:\t");
   scanf("%d",&a[i].roll_no);
   printf("enter the marks of the student:\t");
   scanf("%d",&a[i].marks);
   printf("\nenter the D.O.B of the student(dd.mm.yyyy):\t");
   scanf("%s",&a[i].b[i].date);
   printf("enter the birth time of the student(hh:mm:am\pm)\t");
   scanf("%s",&a[i].b[i].time);
  }
  clrscr();
  printf("\nthe given info of students are as follows.\n\n\n\n");
  printf(" 1. total number of students is %d",n);
  printf("\n\n\nroll no\t\tname\t\tD.O.B\t\ttime\tmarks\n");
  for(i=0;i<n;i++)
  {
   printf("\n%d\t\t",a[i].roll_no);
   printf("%s\t\t",a[i].name);
   printf("%s\t\t",a[i].b[i].date);
   printf("%s\t",a[i].b[i].time);
   printf("%d\n",a[i].marks);
   }
   getch();
	     }