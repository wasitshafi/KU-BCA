#include<stdio.h>
#include<conio.h>
#include<iostream>
class c_1{
	    int m1,m2;
	    friend void sum(c_1) // a friend is not a member function
	    public:
	    void getdata()
	    {
	     cout<<"enter any 2 integer value:\t";
	     cin>>m1;
	     cin>>m2;
	     cout<<"\ndata is added.";
	     getch();
	     return;
	    }
	    void display()
	    {
	     cout<<"value of m1 and m2 is :\t"<<m1<<m2;
	     getch();
	     return;
	    }
	 };
void sum(c_1 x)
{
 int s;
 s=x.m1+x.m2;
 x.m1 = 454;
 cout<<"\nsum of m1 and m2 is :\t"<<s;
 getch();
 return;
}
void main()
{
  c_1 obj1;
  clrscr();
  obj1.getdata();
  clrscr();
  sum(obj1);
  obj1.display();
  
}
