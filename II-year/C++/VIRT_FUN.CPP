#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class b{
	 public:
	 virtual void putdata()
	  {
	   cout<<"\ndisplay of base class...";
	  }
	};
class d:public b{
	 public:
	 void putdata()
	 {
	  cout<<"\ndisplay of deriver class...";
	 }
	};
void main()
{
 b obj1;
 d obj2;
 b *ptr1;
 ptr1=&obj1;
 clrscr();
 ptr1->putdata();

 ptr1=&obj2;//here complier selects on the bases of content rather than type
					      // becaues of virtual fun.
 ptr1->putdata();

 getch();
}