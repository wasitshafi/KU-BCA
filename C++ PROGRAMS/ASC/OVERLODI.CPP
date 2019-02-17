#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class overloading{
		int a,b,c;
		public:
		void getdata(int x,int y,int z)
		{
		 a=x;
		 b=y;
		 c=z;
		 return;
		}
		void putdata()
		{
		 cout<<"a="<<a<<"  b="<<b<<"  c="<<c;
		 return;
		}
		 overloading operator+(overloading temp)
		{
		   overloading x;
		   x.a=a+temp.a;
		   x.b=b+temp.b;
		   x.c=c+temp.c;
		   return(x);
		}
	      };
void main()
{
 int i,j,k;
 int l,m,n;
 overloading obj1;
 overloading obj2;
 overloading obj3;
 clrscr();
 cout<<"enter value of a,b and c(obj1):\n";
 cin>>i>>j>>k;
 obj1.getdata(i,j,k);
 cout<<"enter values of a,b and c(obj2):\n";
 cin>>l>>m>>n;
 obj2.getdata(l,m,n);
 clrscr();
 cout<<"values of obj1:\t";
 obj1.putdata();
 cout<<"\nvalues of obj2:\t";
 obj2.putdata();
 cout<<"\n\nsum of 2 objects is :\t";
 obj3=obj1+obj2;
 obj3.putdata();
 getch();
 }