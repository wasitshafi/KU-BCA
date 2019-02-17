//jmi_p43.c on 07-08-18
//
//programe to count white spaces in a string
//
#include<stdio.h>
#include<conio.h>

int main()
{
	int count = 0;
	char str[100] ,i;
	
	printf("\nEnter string:\t");
	gets(str);
	
	for(i = 0 ;str[i]; i++)
	 if (str[i] == 32)
	  count++;	

	
	printf("\nTotal white spaces in string is :\t%d" , count);
	
	return 0;
}
