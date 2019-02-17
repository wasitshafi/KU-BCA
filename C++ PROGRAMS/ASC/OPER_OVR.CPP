#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class overloading{
	int num;
	public:
	 void getdata()
	 {
	  cout<<"enter num:\t";
	  cin>>num;
	 }
	 void putdata()
	 {
	   cout<<num;
	 }
	 void operator-()
	 {
	  num++;
	 }
	 };
void main()
{
 overloading obj;
 clrscr();
 obj.getdata();
 cout<<"\nnumber before operator loading is:\t";
 obj.putdata();

 -obj;
 cout<<"\nnumber after operator overloading is:\t";
 obj.putdata();
 getch();
}

