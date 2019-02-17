#include<iostream.h>
#include<conio.h>
#define size 3
class abc{
	   int rollno,marks;
	   public:
	    void getdata(int r,int m)
	    {
	     rollno=r;
	     marks=m;
	    }
	    void putdata()
	    {
	     cout<<rollno<<"\t"<<marks<<"\n";
	    }
	 };
void main()
{
 abc *ptr,*temp;
 ptr=new abc[size];//creating an arry of object
 temp=ptr;//storing address of prt into temp for display purpose
 int r,m;
 clrscr();
 for (int i=1;i<=size;i++)
 {
  cout<<"\neter roll no of student no. "<<i<<" :\t";
  cin>>r;
  cout<<"\nenter marks of student no. "<<i<<" :\t";
  cin>>m;
  ptr->getdata(r,m);
  ptr++;
 }
 clrscr();
 cout<<"\nrollno\tmarks\n";
 for(int j=0;j<size;j++)
 {
  temp->putdata();
  temp++;
 }
getch();
}