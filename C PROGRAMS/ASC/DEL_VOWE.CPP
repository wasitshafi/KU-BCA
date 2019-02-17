#include<stdio.h>
#include<conio.h>
#include<string.h>
void main()
 {
 char a[100];
 int i=0;
 clrscr();
 printf("\n\nenter any string :\t");
 gets(a);
 clrscr();
 printf("\nbefore deleting  the vowel alphabets string is:\t");
 puts(a);
 printf("after deleting the vowels the given string is :\t");
 for(i=0;i<strlen(a);i++)
 {
  if(a[i]=='a'||a[i]=='e'||a[i]=='i'||a[i]=='o'||a[i]=='u')
  {

  a[i]=a[i+1];
  i--;
  }
  }
 puts(a);
 getch();
 }
