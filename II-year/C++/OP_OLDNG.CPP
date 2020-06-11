#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<iostream.h>
class string{
	 char *fp;
	 int l;
	 public:
	 string()
	 {
	 }
	 string(char *ptr)
	 {
	  l=strlen(ptr);
	  p=new char[l+1];
	  strcpy(p,ptr);
	 }
	 void display()
	 {
	  cout<<"string is:\t";
	  puts(p);
	  return;
	 }
	 string operator+(string x)
	 {
	  string y;
	  y.l=l+x.l;
	  y.p=new char[y.l+1];
	  strcpy(y.p,x.p);
	  return(y);
	 }
      };
void main()
{
 string str1("hello");
 string str2("student");
 string str3;
 str3=str1+str2;// or  str3=str1 operator+(str2);
 str1.display();
 str2.display();
 str3.display();
 getch();
}

