#include<stdio.h>
#include<conio.h>
int main(int argc,char *argcv[])
{
if(argc==2)
{
printf("the arg is supplied %s\n",argv[1]);
}
else
if(argc>2)
{
printf("too many arg is suool\n");
}
else
{
printf("one argu is expted\n");
}
getch();
}