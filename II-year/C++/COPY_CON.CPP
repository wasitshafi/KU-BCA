#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class factorial{
		 int num;
		 public:
		   void getdata()
		   {
		    cout<<"enter no :\t";
		    cin>>num;
		   }
		  factorial()
		   {
		   }
		  factorial(factorial &o)
		  {
		   num=o.num;
		  }
		 void  putdata()
		  {
		   for(int i=num-1;i!=0;i--)
		    num=num*i;
		   cout<<"factorial is :\t"<<num;
		  }
	       };
void main()
{
 clrscr();
 factorial obj1;
 obj1.getdata();
 factorial obj2(obj1);
 obj2.putdata();
 getch();
 }

