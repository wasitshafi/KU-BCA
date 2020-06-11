#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class c_2;  // forward declaration
class c_1{
	    int m1;
	    friend void sum(c_1,c_2)
	    public:
	    void getdata()
	    {
	     cout<<"enter any integer value:\t";
	     cin>>m1;
	     cout<<"\ndata is added.";
	     getch();
	     return;
	    }
	    void display()
	    {
	     cout<<"value of m1 is :\t"<<m1;
	     getch();
	     return;
	    }
	 };
class c_2{
	   int m2;
	    public:
	     friend void sum(c_1,c_2)
	     void getdata()
	     {
	      cout<<"enter any integer value:\t";
	      cin>>m2;
	      cout<<"\ndata is added.";
	      getch();
	      return;
	     }
	     void display()
	     {
	      cout<<"value of m2 is :\t"<<m2;
	      getch();
	      return;
	     }
	 };
void sum(c_1 x,c_2 y)
{
 int s;
 s=x.m1+y.m2;
 cout<<"\nsum of m1 and m2 is :\t"<<s;
 getch();
 return;
}
void main()
{
  c_1 obj1;
  c_2 obj2;
  clrscr();
  obj1.getdata();
  clrscr();
  obj2.getdata();
  clrscr();
  sum(obj1,obj2);
}