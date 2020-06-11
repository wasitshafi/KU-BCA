#include<iostream.h>
#include<conio.h>
#include<ctype.h>
#include<stdlib.h>
void main()
{
 char choice,choice2,ch[7]={'r','e','a','l','l','y,','\0'},i=0,n;
 clrscr();
 cout<<"Do you want to use this programe(Y/N):\t";
 choice=getche();
 choice=toupper(choice);
 if(choice=='Y')
 exit(0);
 else if(choice=='N')
 {
  n=1;
    do{
	cout<<endl<<endl<<"Are you ";
	      for(i=0;i<n;i++)
	       {
		 cout<<" "<<ch;
	       }
       cout<<" sure you do not want to use this programe(Y/N):\t";
       choice2=getche();
       choice2=toupper(choice2);
	  if(choice2!='Y'&&choice2!='N')
	  {
	   cout<<endl<<"oops wrong input...!";
	   getch();
	   exit(0);
	  }
       n++;
      }while(choice2=='N');
 }
 if(choice!='Y'&& choice!='N')
 cout<<endl<<"oops wrong input...!";
  getch();
};
