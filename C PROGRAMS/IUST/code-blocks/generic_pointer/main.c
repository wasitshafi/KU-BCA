#include<stdio.h>
#include<conio.h>
void main()
{
 int n = 20, *intp;
 float f = 11.22, *floatp;
 char ch = 'A', *charp;
 void *gp;

 intp = &n;
 charp = &ch;
 floatp = &f;

 printf("n = %d", *intp);
 printf("\nch = %c", *charp);
 printf("\nf = %.2f", *floatp);


 printf("\n\nPrinting via void pointer:\n");
 gp = &n;
 printf("\n\nn = %d ", *(int *)gp);

 gp = &ch;
 printf("\nch = %c ", *(char *)gp);

 gp = &f;
 printf("\nf = %.2f ", *(float *)gp);

 getch();
}
