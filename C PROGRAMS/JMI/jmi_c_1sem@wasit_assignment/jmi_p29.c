//jmi_p29.c on 11-10-18
//
//program to check whether a string is palindrome or not.
//

#include<stdio.h>
#include<string.h>

int check_palindrome(char *str, int i, int j)
{
	if( i >= j )
	 return 1;
	else if( str[i] != str[j] )
     return 0;
    else
     check_palindrome(str, ++i, --j);	  

}

int main()
{
	int len, i, j, is_palindrome = 1;

	char str[100];
	
	printf("\nEnter string:\t");
	scanf("%[^\n]", str);
	
	len = strlen(str);
	

	
	is_palindrome = check_palindrome( str, 0, len - 1);
	
	if( is_palindrome)
	 printf("\nString is palindrome.");
	else
	 printf("\nString is not palindrome.");
	return 0; 
}
