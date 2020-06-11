#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class person{
	     int idno;
	     char name[20];
	 public:
	 void getinfo()
	 {
	  cout<<"enter name :-\t";
	  cin>>name;
	  cout<<"enter "<<name<<"'s id no:-\t";
	  cin>>idno;
	 }
	  void putinfo()
	 {
	  cout<<"\n"<<idno<<"\t"<<name<<"\t";
	 }
	 virtual void getdata()=0;
	 virtual int isoutstanding()=0;//pure virtual function or do nothing fun.
	};
class student:public person{
	 int p_age;
	 public:
	 void getdata()
	 {
	  person::getinfo();
	  cout<<"enter student result percentage:-\t";
	  cin>>p_age;
	  clrscr();
	 }
	 int isoutstanding()
	 {
	  return(p_age>85)?1:0;
	 }
	};
class professor:public person{
	 int no_pub; //no of books published
	 public:
	 void getdata()
	 {
	  person::getinfo();
	  cout<<"enter no. professor's  publication:-\t";
	  cin>>no_pub;
	  clrscr();
	 }
	  int isoutstanding()
	 {
	  return(no_pub>20)?1:0;
	 }
	};
void main()
{
 person *obj[100];
 int i=0;
 char choice;
 clrscr();
 do{
     cout<<"enter  students or professor (s/p):-\t";
     cin>>choice;
     if(choice=='s')
      obj[i]=new student;
     else
      obj[i]=new professor;
    obj[i++]->getdata();

    cout<<"\ndo you want to continue (y/n):-\t";
    cin>>choice;
   }while(choice=='y');
   clrscr();
   cout<<"\nID NO\tNAME\tPERFORMANEC\n";
   for(int j=0;j<i;j++)
   {
    obj[j]->putinfo();
    if(obj[j]->isoutstanding())
     cout<<"outstanding performance.";
    else
     cout<<"normal performance.";
   }
getch();
}