#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class b{
	 public:
	 void display()
	 {
	   cout<<"\n\ndisplay of base class....";
	 }
	};
class d:public b
       {
	public:
	void display()
	{
	 b::display(); //calling base class display()
	 cout<<"\ndisplay of derived class....\n";
	}
       };
void main()
{
 d obj1;
 clrscr();
 obj1.display();//calling its own display() where we call base class dispaly()
 obj1.d::display(); //-------do-------------//
 obj1.b::display();//calling base class display()
 getch();
}