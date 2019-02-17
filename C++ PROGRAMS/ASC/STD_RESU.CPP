#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class student{
		char name[20],grade;
		int rollno;
		int m1,m2,total;
		float per;
	      public:
		void getdata(int i)
		{
		 clrscr();
		 cout<<"enter name of student no "<<i+1<<" :\t";
		 gets(name);
		 cout<<"enter '"<<name<<"' roll no:\t";
		 cin>>rollno;
		 cout<<"enter '"<<name<<"' marks in 2 subjects:\n";
		 cin>>m1>>m2;
		 return;
		}
		void putdata(int i)
		{
		 cout<<i+1<<"\t"<<rollno<<"\t\t"<<name<<"\t"<<m1<<"\t"<<m2<<"\t"<<total<<"\t"<<per<<"\t"<<grade<<"\n";
		}
		void cal()
		{
		 total=m1+m2;
		 per=(float)total/200*100;
		 if(per<50)
			grade='F';
		 if(per>=50&&per<60)
			grade='D';
		 if(per>=60&&per<75)
			grade='C';
		 if(per>=75&&per<90)
			grade='B';
		 if(per>=90)
			grade='A';
		}
	       };
void main()
{
 int i,n;
 student obj[20];
 clrscr();
 cout<<"enter no of student:\t";
 cin>>n;
 for(i=0;i<n;i++) //fun for input student data
  obj[i].getdata(i);

 for(i=0;i<n;i++)  // fun for calculation
  obj[i].cal();

  clrscr();
  cout<<"s.no\troll no\t\tname\tmarks1\tmarks2\ttotal\t%age\tgrade\n";
  for(i=0;i<n;i++)  //fun for display
   obj[i].putdata(i);
  getch();
}