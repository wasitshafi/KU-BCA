#include<stdio.h>
#include<conio.h>
main(int argc,char *argv[])
{
int count;
clrscr();
printf("programe name : %s \n",argv[0]);
if(argc>1)
{
for (count=1;count<argc;count++)
printf("argument line %d:%s\n",count,argv[count]);
}
else
puts("no c line argument.");
getch();
}