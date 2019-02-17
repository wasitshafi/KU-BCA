#include<Stdio.h>
#include<conio.h>
void main()
{
char a[100];
int i=0;
clrscr();
printf("ener the string:\t");
gets(a);
printf("\n\n\n");
while(a[i]!='\0')
{
printf("%c",a[i]);
i++;
}
getch();
}
