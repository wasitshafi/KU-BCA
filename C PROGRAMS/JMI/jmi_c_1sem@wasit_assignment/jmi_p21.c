//
//jmi_p21.c
//
//programe to compute length of string using recursion
#include<stdio.h>
#include<string.h>


int my_strlen(char* ch)
{
  static int len = 0;

	if( *ch == '\0' )
	return len;
	else
	{
	 
	 len++;
	 my_strlen(ch + 1);
  
	}
}
 
int main()
{
	char str[100];
	
	printf("\nEnter a string:");
	gets(str);
	
	printf("\nString lenght = %d", my_strlen(&str)); 
	
	return 0;
}
