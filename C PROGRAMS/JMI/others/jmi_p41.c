//jmi_p41.c on 07-08-18
//
//programe to find length of string
//
#include<stdio.h>
#include<conio.h>

int main()
{
	int len;
	char str[100];
	
	printf("\nEnter string:\t");
	gets(str);
	
	for(len = 0 ;str[len]; len++);
	
	printf("\nString length is :\t%d" , len);
	
	return 0;
}
