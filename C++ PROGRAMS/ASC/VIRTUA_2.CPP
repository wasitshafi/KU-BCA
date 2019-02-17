#include<stdio.h>
#include<conio.h>
#include<iostream.h>
int s_no=1;
class student{
	 int rno;
	 char name[20];
	 public:
	 void  getinfo()
	 {
	   cout<<"\nenter name of student no "<<s_no<<" :\t";
	   cin>>name;
	   cout<<"\n\nenter "<<name<<"'s roll no:\t";
	   cin>>rno;
	 }
	 void putinfo()
	 {
	  cout<<"\n"<<s_no<<"\t"<<rno<<"\t"<<name<<"\t";
	 }
	};
class marks:virtual public student
	{
	 int m1,m2,m3,total;
	 public:
	 void getmarks()
	 {
	  cout<<endl<<"enter marks for m1,m2,m3 subjects:\n";
	  cin>>m1>>m2>>m3;
	  total=m1+m2+m3;
	 }
	 void putmarks()
	 {
	  cout<<m1<<"\t"<<m2<<"\t"<<m3<<"\t"<<total;
	 }
	};
class catagory:virtual public student
       {
	char cat[5];
	public:
	//contains base class getinfo() & putinfo function
	void getcat()
	{
	 cout<<"OP :-for open.\n";
	 cout<<"SC :-for schedule cast.\n";
	 cout<<"ST :-for schedule tribe.\n";
	 cout<<"otr:-for other catagories.\n";
	 cout<<"\n\nenter your catagories:\t";
	 cin>>cat;
	}
	void putcat()
	{
	 cout<<cat<<"\t";
	}
       };
class result:public marks,public catagory
	{
	 public:
	 void getdetails()
	 {
	  getinfo();
	   clrscr();
	  getcat();
	   clrscr();
	  getmarks();
	   clrscr();
	 }
	 void putresult()
	 {
	  putinfo();
	  putcat();
	  putmarks();
	 }
	};
void main()
{
 result obj[10];
 clrscr();
 cout<<"enter no of student:-\t";
 int num;
 cin>>num;
  for(int i=0;i<num;i++,s_no++)
   obj[i].getdetails();
 clrscr();
 s_no=1;
 cout<<"S.NO\tROLL NO\tNAME\tCAT.\tM1\tM2\tM3\tTOTAL\n\n";
  for(i=0;i<num;i++,s_no++)
   obj[i].putresult();
 getch();
}

