#include<iostream.h>
#include<conio.h>
class abc{
	   int a,b;
	   public:
	    void getdata(int n,int m)
	    {
	     a=n;
	     b=m;
	    }
	    void putdata()
	    {
	     cout<<"\na =\t"<<a;
	     cout<<"\nb =\t"<<b;
	     getch();
	    }
	 };
void main()
{
 abc obj1;
 abc *ptr;
 ptr=&obj1;
 clrscr();
 obj1.getdata(10,20);
 obj1.putdata();
 cout<<"\n\nnow calling through arrow operator.\n";
 ptr->getdata(30,40);//here ptr_getdata->is equal to  obj1.getdata
 ptr->putdata();
}


