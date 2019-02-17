//
//jmi_p9.c on 09-08-18
//
//program to check whether a number is a palindrome or not.
#include<stdio.h>
//#include<conio.h>
int main()
{
 long int num, r_num, temp, rem;

// clrscr();

 printf("\nEnter a number:\t");
 scanf("%ld", &num);
 
 if( num >= 0)
 {
 temp = num;
 r_num = 0;

 while(num)
 {
  rem = num % 10;
  r_num = (r_num * 10) + rem;
  num = num / 10;
 }

 if(temp == r_num)
  printf("\n%ld is palindrome.\n", r_num);
 else

  printf("\n%ld is not palindrome.\n", r_num);
 }
else
	printf("\nInvalid input....!");

  //getch();
return 0;
}
