#include<stdio.h>
#include<conio.h>
#include<string.h>
void main()
{
 int i;
 char str[50];
 clrscr();
 printf("\nenter any string:\t");
 gets(str);
 clrscr();
 printf("before ancoding  and de-coding string are:    ");
 puts(str);
 printf("\n\n\nafter encoding string is:\t");
 for(i=0;i<strlen(str);i++)
  {
   if(str[i]>='a'&&str[i]<='z'||str[i]>='A' && str[i]<='Z')
   str[i]=str[i]+1;
  }
  puts(str);
  printf("\nafter decoding string is:\t");
  for(i=0;i<strlen(str);i++)
  {
   if(str[i]>='a'&&str[i]<='{'||str[i]>='A' && str[i]<='{') //z+=={
   str[i]=str[i]-1;
  }
  puts(str);
  getch();
	  }