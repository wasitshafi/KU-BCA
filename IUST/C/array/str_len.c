#include<stdio.h>
#include<stdlib.h>


#define MAX_SIZE

int str_len(char str[])
{
 int len = 0;
 
 for(int i = 0 ;str[i] != '\0';i++)len++;
 
 return len;
}
int main()
{
 char str[100];
 
 printf("\nEnter string:\t");
 gets(str);
 
 printf("\nString length is :\t%d\n",str_len(str));
 return 0; 
}
