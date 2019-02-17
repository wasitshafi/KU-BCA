//
//jmi_p11.c on 10-08-18
//
// programe to compute a frequency of a specified digit in a no.
#include<stdio.h>
//#include<conio.h>
int main()
{
 long int num, temp, rem, count = 0, key;

 printf("\nEnter a number:\t");
 scanf("%ld", &num);
 
 if(num > 0)
{
 printf("\nEnter a key digit:\t");
 scanf("%ld", &key);

 temp = num;
 while(num)
 {
  rem = num % 10;

   if(rem == key)count++;

  num = num / 10;
 }

  printf("\n%ld occurs %ld times in  number %ld.\n", key, count, temp);
}
else
 printf("\nInvalid input....!");

//getch();
 return 0;
}
