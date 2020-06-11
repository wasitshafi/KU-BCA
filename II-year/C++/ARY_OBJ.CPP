#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#include<iostream.h>
class student
 {
  int rno;
  int marks1,marks2,total;
  char name[10];
  public:
  void getinfo()
  {
   cout<<"enter std roll no:\t";
   cin>>rno;
   cout<<"enter std name:\t";
   cin>>name;
   cout<<"enter std english marks:\t";
   cin>>marks1;
   cout<<"enter std math marks:\t";
   cin>>marks2;
   cout<<"\nstudent data added.";
   getch();
   clrscr();
   return;

  }
  void displayinfo()
  {
   total=marks1+marks2;
   cout<<rno<<"\t  ";
   cout<<name<<"\t";
   cout<<total<<"\n";
   return;
  }
};
void main()
{
 clrscr();
 student obj[10];
 int i=0;
 while(1)
 {
 clrscr();
 int choice;
 cout<<"<1> for add std info.\n";
 cout<<"<2> for display std info.\n";
 cout<<"<0> for exit.\n\n";
 cout<<"enter your chioce:\t";
 cin>>choice;
  switch(choice)
  {
   case 1:
	   if(i>10)
	   {
	    cout<<"\nlist is full.";
	    getch();
	   }
	   else
	   {
	       obj[i].getinfo();
	       i++;
	   }
	  break;
   case 2:
	   if(i==0)
	   {
	    cout<<"no data is added.";
	    getch();
	    break;
	   }
	   else
	   {
	    cout<<"\n\nroll no\t  name\tt.marks\n";
	    for(int j=0;j<i;j++)
	    obj[j].displayinfo();
	    getch();
	    break;
	   }
   case 0: exit(0);
  }
 }
}