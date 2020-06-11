#include"stdio.h"
#include"conio.h"
#include"string.h"
void main()
{
	char str1[99],str2[99],i,j;
	clrscr();
	printf("enter the first string \n");
	gets(str1);
	j=0;
	for(i=0;i<strlen(str1);i++)
	if(str1[i]!='a'&& str1[i]!='e')
	{
	str2[j]=str1[i];
	j++;
	}
	puts(str2);
	getch();
	}