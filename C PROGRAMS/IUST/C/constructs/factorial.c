#include <stdio.h>
#include <stdlib.h>

int main()
{
    long int fact=1;
    int num,temp_num;
    char choice;
    do{
        printf("\nEnter a number:\t");
        scanf("%d", &num);
        temp_num = num;

        while(num != 1) // computing factorial
        {
            fact = fact * num;
            num--;
        }

        printf("\nFactorial of %d is :\t%ld", temp_num,fact);

        while(1)
        {
         printf("\nDo you want to exit(Y/N) :\t");
         scanf("%s",&choice);

         if (choice == 'y' || choice == 'Y' || choice == 'n' || choice == 'N')
         {
             break;
         }
         else
         {
             printf("\noOps..! Invalid input.");
         }
       }
     }while(choice != 'y' && choice !='Y');
}
