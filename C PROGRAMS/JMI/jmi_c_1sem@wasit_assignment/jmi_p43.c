//jmi_p43.c on 01-10-18
//
//program to count no of white spaces in string
//

#include<stdio.h>
#include<string.h>

int count_white_spaces(char *str)
{
	int i, white_spaces = 0;
	
	for(i = 0 ; *(str + i) != '\0'; i++)
	{
		if(*(str + i) == 32) white_spaces++;
		else
		if(*(str + i) == 9) white_spaces += 8;
		if(*(str + i) == 0) white_spaces++;
	}
	
	return white_spaces;
}
int main()
{
	char str[100];
	
	printf("\nEnter string:\t");
	gets(str);
	
	printf("\nTotal white spaces in string is %d.", count_white_spaces(str));
    
    return 0;
}
