#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class overloading{
	int num;
	public:
	 void getdata()
	 {
	  cout<<"\nenter num:\t";
	  cin>>num;
	 }
	 void putdata()
	 {
	   cout<<"\n"<<num;
	 }
	 overloading operator-(overloading x)
	 {
	   overloading temp;
	   temp.num=num+x.num;
	   return (temp);
	 }
	 };
void main()
{
 overloading obj1,obj2,obj3;
 clrscr();
 obj1.getdata();
 obj2.getdata();
 obj3=obj1-obj2; //or obj3=obj1operator+(obj2)
 obj1.putdata();
 obj2.putdata();
 cout<<"\nsum two numbers by using '-' operator:\t";
 obj3.putdata();

 getch();
}

