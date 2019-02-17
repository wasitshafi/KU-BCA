#include<stdio.h>
#include<stdlib.h>

int str_chr(char str[], char ch)
{

 int i = 0;
 
 while (str[i] != '\0' && str[i] != ch) 
 i++;
 
 if ( i == strlen(str)) // means character not found
  
  return 0;
 
 else
 
  return i + 1;

}

int main()
{

 char str[100], ch;
 int position;

 printf("\nEnter a string:\t");
 gets(str);
 
 printf("\nEnter search character :\t");
 ch = getchar();
  
 position = str_chr(str, ch);
 
 if(position)
 
  printf("\nCharacter found at index :\t%d\n", position);
 
 else 
 
  printf("\nCharacter not found.\n");
 
}
