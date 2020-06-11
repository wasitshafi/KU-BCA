#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class student{
	      int rollno;
	      char name[20];
	      public:
	      void getinfo()
	      {
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
		 cout<<"\nresult is fail.";
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
class fee:public student{
	      int f1,f2,f3;
	      public:
	       void getfee()
	       {
		cout<<"enter  fees of 3 subjects.";
		cin>>f1>>f2>>f3;
		return;
	       }
	      void putfee()
	      {
	       cout<<"\nfees for 3 subjects are as:\n"<<f1<<"\t"<<f2<<"\t"<<f3;
	       return;
	      }
	      };
void main()
{
 clrscr();
 printf("\nenter records for dept. of result:\n\n");
 result objr;
 objr.getinfo();
 objr.getmarks();
 printf("\nenter records for dept. of admin.:\n\n");
 fee objf;
 objf.getinfo();
 objf.getfee();
 //printing both class data...
 clrscr();
 printf("records of dept. of result are as:\n");
 objr.putinfo();
 objr.putresult();

 printf("\n\n\nrecords of dept. of admin. are as:\n");
 objf.putinfo();
 objf.putfee();
 getch();
}