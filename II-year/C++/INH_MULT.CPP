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
class marks:public student{
	     int m1,m2,m3;

	     public:
	     int t;
	     void getmarks()
	     {
	      cout<<"\nenter marks of 2 subjects:\n";
	      cin>>m1>>m2;
	      t=m1+m2;
	      clrscr();
	      return;
	     }

			      };
class result:public marks{
	    char grade;
	    float per;
	    public:
	     void putresult()
	     {
	       per=(float)t/200*100;
	       if(per<=32)
		{
		 cout<<"fail";
		 return;
		}
		else
	       {
		if(per>90)
		  grade='A';
		if(per>75)
		  grade='B';
		if(per>55)
		  grade='C';
		if(per>32)
		  grade='D';
		}
		cout<<"\ngrade is :"<<grade;
		cout<<"\n%age is :"<<per;
		return;
		}
	      };

void main()
{
 result obj;
 obj.getinfo();
 obj.getmarks();
 obj.putinfo();
 obj.putresult();
  getch();
}
