#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class student{
	     int rollno;
	     char name[20];
	     public:
	      void getinfo()
	      {
	       clrscr();
	       cout<<"input roll no:\t";
	       cin>>rollno;
	       cout<<"\nenter name:\t";
	       gets(name);
	       clrscr();
	       return;
	      }
	      void putinfo()
		{
		 cout<<name<<" roll no. is "<<rollno;
		 return;
		}
	     };
class result:public student{
	     int m1,m2,m3;
	     int t;
	     float per;
	     public:
	     void getmarks()
	     {
	      cout<<"\nenter marks of 2 subjects:\n";
	      cin>>m1>>m2;
	      clrscr();
	      return;
	     }
	     void putmarks()
	     {
	      t=m1+m2;
	      per=(float)t/200*100;
	      cout<<"\ntotal marks is "<<t<<" and percentage is "<<per<<"%";
	      return;
	     }
	   };
void main()
{
 result obj;
 obj.getinfo();
 obj.getmarks();
 obj.putinfo();
 obj.putmarks();
 getch();
}