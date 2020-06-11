#include"stdio.h"
#include"conio.h"
#include"string.h"
void main()
{
	char name[99][99],tempt[99];
	int i,j,n;
	clrscr();
	printf("enter how many names\n");
	scanf("%d",&n);
	printf("enter %d names\n",n);
	getchar();
	for(i=0;i<n;++i)
	gets(name[i]);
	printf("given names are\n");
	for(i=0;i<n;++i)
	puts(name[i]);
	for(j=0;j<n-1;++j)
	{
	for(i=0;i<n-1;++i)
	{
	if(strcmp(name[i],name[i+1])>0)
	{
	strcpy(tempt,name[i]);
	srtcpy(name[i],name[i+1]);
	strcpy(name[i+1],tempt);
	}
	}
	}
	printf("name given names are sorted order \n");
	printf("-----------------------------------------\n");
	for(i=0;i<n;++i)
	printf("%s /n",name[i]);
	getch();
	}







