#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class abc{
		int num;
		public:
		 void getdata()
		 {
		  cout<<"enter data :\t";
		  cin>>num;
		 }
		 friend void putdata(abc);
	 };

void putdata(abc x)
{
 cout<<"data is :\t"<<x.num;
 getch();
}
void main()
{
 abc obj;
 clrscr();
 obj.getdata();
 putdata(obj);

}