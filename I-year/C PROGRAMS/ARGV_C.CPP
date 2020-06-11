#include<stdio.h>
#include<conio.h>
main(int argc,char *argv[])
{
int i;
printf("no. of arguments %d",argc);
for (i=1;i<argc;i++)
{
printf("arguments %d=%s",i,argv[i]);
}

}