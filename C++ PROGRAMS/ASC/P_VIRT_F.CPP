#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class b{          //abstract class
	 public:
	 virtual void putdata()=0;//pure virtual function or do nothing fun.
	};
class d1:public b{
	 public:
	 void putdata()
	 {
	  cout<<"\ndisplay of deriver class 1...";
	 }
	};
class d2:public b{
	 public:
	 void putdata()
	 {
	  cout<<"\ndisplay of derived class 2....";
	 }
	};
void main()
{
 d1 obj1,*ptr1;
 d2 obj2,*ptr2;
 ptr1=&obj1;

 clrscr();
 ptr1->putdata();

 ptr2=&obj2;
 ptr2->putdata();
 getch();
}