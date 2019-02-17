#include<stdio.h>
#include<conio.h>
#define chr 50
#define lines 100
void main()
{
int i=0,k=1,n;
char a[lines][chr];
clrscr();
printf("\n\nenter the no of strings:\t");
scanf("%d",&n);
while(i<n)
{
printf("\n\nenter string no %d: \t",k);
gets(a[i]); /*scanning line no 1,2,3,4........*/
i++;
k++;
}
k=1;
for(i=0;i<n;i++)
printf("\n\n\nstrings no %d :\t%s \n at aderss no :\t%X",k,a[i],a[i]);
getch();
}
