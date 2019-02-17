#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class fibonacii{
	     int n;
	     public:
	     void getdata();
	     void display();
	    };

void fibonacii::getdata()
{
 cout<<"enter number:\t";
 cin>>n;
}
void fibonacii::display()
	     {

	      cout<<"\nfibonacii series of '"<<n<<"' terms are as:\t";
	      int term,t1=0,t2=1,i;
	      for(i=0;i<n;i++)
	      {
	       term=t1+t2;
	       cout<<term<<"\t";
	       t1=t2;
	       t2=term;
	      }
	      getch();
	     }
void main()
{
	    fibonacii obj;
	    clrscr();
	    obj.getdata();
	    clrscr();
	    obj.display();
	   }
