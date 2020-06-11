#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class abc{
		int num;
		public:
		 void getdata(int n)
		 {
		 num=n;
		 }
//the below funciton can't make any change class data if it tries to do so
// then complier shows an error message
		 void putdata_1()const
		 {
		  // num=num+10
		  cout<<"\nnum is (const):\t "<<num;
		 }
		 void putdata_2()
		 {
		  num=num+10;
		  cout<<"\nnum is :\t"<<num;
		 }
	 };
void main()
{
 abc obj;
 clrscr();
 obj.getdata(1);
 obj.putdata_1();
 obj.putdata_2();
 getch();

}