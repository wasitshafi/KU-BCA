#include<iostream.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
class abc{
	      int marks;
	      char name[20];
	      public:
	       void getdata(int m,char *n)
	       {
		strcpy(name,n);
		marks=m;
	       }
	       void putdata()
	       {
		cout<<"\nname  :-\t"<<name;
		cout<<"\nmarks :-\t"<<marks;
	       }
	       abc greater(abc temp)
	       {
		if(marks>temp.marks)
		  return *this;        //retur invoking object(o1)
		else if(marks<temp.marks)
		  return temp;
		else
		 cout<<"\nboth student has scored equal marks."; // means both are equal
		 getch();
		 exit(0);
	       }
	   };
void main()
{
  int m;
  char name[20];
  abc o1,o2,o3;
  clrscr();
  cout<<"enter name:-\t";
  cin>>name;
  cout<<"enter "<<name<<"'s marks :-\t";
  cin>>m;
  o1.getdata(m,name);
  clrscr();
  cout<<"enter name:-\t";
  cin>>name;
  cout<<"enter "<<name<<"'s marks :-\t";
  cin>>m;
  clrscr();
  o2.getdata(m,name);
  cout<<"given data are as:\n\n";
  o1.putdata();
  o2.putdata();
  getch();
  clrscr();
  o3=o1.greater(o2);
  cout<<"student having max. marks is :\n\n";
  o3.putdata();
  getch();
}
