#include<Stdio.h>
#include<conio.h>
void main()
{
 int n,i,a[50];
 char j;
 printf("enter the size of an array;");
scanf("%d",&n);
clrscr();
FILE *fptr;
fptr=fopen("fl_arry.dat","w");
for(i=0;i<n;i++)
scanf("%d",&a[i]);
for(i=0;i<n;i++)
fprintf(fptr,"%d",a[i]);
fclose(fptr);
getch();
}

