#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class u_overloading{
		int a,b,c;
		public:
		void getdata()
		{
		  cout<<"\nenter value of a,b and c:\n";
		  cin>>a>>b>>c;
		  return;
		}
		void putdata()
		{
		 cout<<"a="<<a<<"  b="<<b<<"  c="<<c;
		 return;
		}
		void operator -()
		{
		 a=-a;
		 b=-b;
		 c=-c;
		 return;
		}
	      };
void main()
{
 u_overloading obj;
 clrscr();
 obj.getdata();
 cout<<"value before operator overloading:\n";
 obj.putdata();
 -obj; //activates overloading function
 cout<<"\n\nvalues after operator overlading:\n";
 obj.putdata();
 getch();
 }