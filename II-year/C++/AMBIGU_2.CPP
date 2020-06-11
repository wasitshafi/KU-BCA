#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class b1{
	 public:
	 void display()
	 {
	   cout<<"\n\ndisplay of base class 1....";
	 }
	};
class b2{
	 public:
	 void display()
	 {
	  cout<<"\n\ndisplay of base class 2.....";
	 }
	};
class d:public b1,public b2
       {
	public:
	void display()
	{
	 cout<<"display of derived class....\n";
	}
       };
void main()
{
 d obj1;
 clrscr();
 obj1.display(); //calling its own display()
 obj1.d::display(); //-------do-------------//

 obj1.b1::display();//calling base class 1 display()
 obj1.b2::display();//calling base class 2 dispaly()
 getch();
}