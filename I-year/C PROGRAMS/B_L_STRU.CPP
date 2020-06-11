#include<stdio.h>
#include<conio.h>
void main()
{
struct{
       int rollno;
       int marks;
       char name[40];
      }std[3];
       int i,k=1,j=1,n;
       clrscr();
       printf("\n\nenter the number of students:\t");
       scanf("%d",&n);
       for(i=0;i<n;i++)
       {
       printf("\n\n\nenter the roll no. of the student no. %d:\t",k);
       scanf("%d",&std[i].rollno);
       printf("\nenter the name of the student no.  %d   :\t",k);
       scanf("%s",&std[i].name);
       printf("\nenter the marks of the student no. %d   :\t",k);
       scanf("%d",&std[i].marks);
       printf("\n\n");
       k++;
       clrscr();
       }
       printf("\n\n\nstd.no\troll no\t\tname\t\tmarks\n\n\n");
       for(i=0;i<n;i++)
       {
       printf("%d\t%d\t\t%s\t\t%d",j,std[i].rollno,std[i].name,std[i].marks);
       printf("\n");
       j++;
       }
       getch();
       }

