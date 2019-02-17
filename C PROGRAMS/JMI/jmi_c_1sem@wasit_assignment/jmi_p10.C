//
//jmi_p10.c on 09-08-18
//
//programe to compute decimal, octal & hexadecimal equivalent of a binary no.
#include<stdio.h>
#include<string.h>
//#include<conio.h>
int main()
{
 long int  len, sum = 0, rem, p_of_2 = 1, i;
 char str[20];
 
 //clrscr();

 printf("\nEnter a binary number:\t");
 
 gets(str);
 
 for(i = 0; str[i] != '\0' ; i++);
 
 i--;
 
 while(i != -1)
 {
  
   if(str[i] != '0' && str[i] != '1')
    {
    	
      printf("\nInvalid invalid input....!");
      return 1;
    }
    else if(str[i] == '1')
    {
	  sum = sum + p_of_2;
    }
   p_of_2 = p_of_2 * 2;
   i--;
 }

 printf("\n\nBinary : %s", str);
 printf("\nDecimal : %ld", sum);
 printf("\nOctal : %o", sum);
 printf("\nHexa-decimal : %X \n", sum);
 
 //getch();

 return 0;
}
