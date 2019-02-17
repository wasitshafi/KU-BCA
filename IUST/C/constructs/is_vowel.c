#include <stdio.h>
#include <stdlib.h>

int main()
{
 char ch;
 int  is_vowel = 0;

 printf("\nEnter a character:\t");
 ch = getchar();

 switch(ch)
 {
  case 'a': is_vowel = 1;
  case 'e': is_vowel = 1;
  case 'i': is_vowel = 1;
  case 'o': is_vowel = 1;
  case 'u': is_vowel = 1;
 }
 printf("\nCharacter is %s :\t", is_vowel?"vowel":"consonant");

 return 0;
}
