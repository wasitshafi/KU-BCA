#include<stdio.h>
#include<conio.h>
#include<string.h>
void main()
 {
  char a[10],b[10];
  int i,j,n,temp;
  clrscr();
  printf("\n\nenter string\t");
  gets(a);
  printf("\ngiven string is as follows:");
  puts(a);
  printf("reverse of given string is:");
  n=strlen(a);
  for(i=0,j=n-1;i<n;i++,j--)
  {
  b[j]=a[i];
  }
  for(i=0;i<n;i++)
  printf("%c",b[i]);
  printf("\n\n");
  for(i=0;i<n;i++)
  {
  if(a[i]==b[i])
  {
   temp=1;
// printf("s");
  }
  else
  {
  temp=0;
 // printf("n");
  }
  }
  if(temp==1)
  printf("string is palindrome");
  else
  printf("string is not a palindrome");
 /* if(strcmp(a,b)==0)
  {
  printf("\n\ngiven string is a palindrome");
  }
  else
  {
  printf("\n\ngiven string is not a palindrome");
  }*/
  getch();
  }
