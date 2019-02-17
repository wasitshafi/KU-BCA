#include<stdio.h>
#include<string.h>
#include<stdlib.h>

int string_len_1(char str[])
{
 int i=0,len=0;

 while(str[i] != '\0')
 {
  len++;
  i++;
 }
 
 return len;
}

int string_len_2(char *str)
{
 int i=0, len=0;
 
 while(*(str+i) != '\0')
 { 
  len++;
  i++;
 }
 
 return len;
}

int string_len_3(char str[])
{
 int i;
 for(i = 0;str[i] != '\0'; i++);
 
 return i;
}

void main()
{
  char str[100];
 
  printf("Enter string :\t");
  gets(str);
 
  printf("\nString length is :\t %d", string_len_1(str));
  printf("\nString length is :\t %d", string_len_2(str));
  printf("\nString length is :\t %d", string_len_2(&str[0])); // same as above
  printf("\nString length is :\t %d\n", string_len_3(str));

} 
