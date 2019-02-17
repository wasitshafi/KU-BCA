#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class fct{
	     int num,fact;
	     public:
	     void getdata();
	     void cal();
	     void display();
	    };

void fct::getdata()
{
 cout<<"enter number:\t";
 cin>>num;
}
void fct:: cal()
{
  int i;
  fact=1;
  for(i=num;i>=1;i--)
      {
	 fact=i*fact;
       }
 }
void fct::display()
	     {

	      cout<<"\nfactorial of "<<num<<"is:"<<fact;
	      getch();

	     }
void main()
{
	    fct obj;
	    clrscr();
	    obj.getdata();
	    obj.cal();
	    clrscr();
	    obj.display();
	   }
