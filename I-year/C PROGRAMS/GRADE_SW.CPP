#include<stdio.h>
#include<conio.h>
#include<ctype.h>              /*for using toupper function*/
void main()
      {
	int n,j=1,i,agrade,bgrade,cgrade,fail;
	char c;
	agrade=bgrade=cgrade=fail=0;
	clrscr();
	printf("\n\nenter the number of students \t");
	scanf("%d",&n);
	printf("\n\n\nA stands for Agrade\nB stands for Bgrade\nC stands for Cgrade\nF stands for FAIL\n");
	for(i=1;i<=n;i++)
	 {
		 printf("\nenter  the grade of students no.%d \t\t",j);
		 scanf("%c",&c);
		 c=toupper(c);
		 j++;

		 switch(c)
		 {
		 case'A':
		 agrade++;
		 break;
		 case'B':
		 bgrade++;
		 break;
		 case'C':
		 cgrade++;
		 break;
		 case'F':
		 fail++;
		 break;
		}
		flushall();
	 }
	   printf("\n\n\tA grade students no. is :%d\n\n",agrade);
	   printf("\tB grade students no. is :%d\n\n",bgrade);
	   printf("\tC grade students no. is :%d\n\n",cgrade);
	   printf("\tFAIL    students no. is :%d\n\n",fail);
	   getch();
    }