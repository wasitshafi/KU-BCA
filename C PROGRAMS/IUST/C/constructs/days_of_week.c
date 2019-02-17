#include <stdio.h>
#include <stdlib.h>

int main()
{
   int day;
   char choice;
   do{
   printf("Enter day (1 - 7):\t");
   scanf("%d", &day);

   switch(day)
   {
       case 1: puts("\nMonday");break;
       case 2: puts("\nTuesday");break;
       case 3: puts("\nWednesday");break;
       case 4: puts("\nThursday");break;
       case 5: puts("\nFriday");break;
       case 6: puts("\nSaturday");break;
       case 7: puts("\nSunday");break;

       default: puts("\noOps...! Invalid input.");return -1;
   }
   printf("\nDo u want to exit (Y/N):\t");
   scanf("%s",&choice);
   }while(choice != 'y' && choice != 'Y');
   return 0;
}
