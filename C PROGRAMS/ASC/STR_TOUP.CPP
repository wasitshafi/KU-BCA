#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<ctype.h>
void main()
 {
  int i,len;
  char a[100],b[100];
  clrscr();
  printf("\n\nenter the string:\t");
  gets(a);
  clrscr();
  printf("\n\ngiven string is as follows:\n");
  puts(a);
  len=strlen(a);
  for(i=0;i<len;i++)
 {
  if(a[i]==tolower(a[i]))
  {
  a[i]=toupper(a[i]);
  }
 // if(a[i]==toupper(a[i]));
  else
  {
  a[i]=tolower(a[i]);
  }
 }
  printf("\n\nby changing upper case letters into lower case and lower case letters into upper case after that given string is as follows:\n\n");
  for(i=0;i<len;i++)
  printf("%c",a[i]);
  getch();
  }