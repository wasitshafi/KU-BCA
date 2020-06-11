#include<stdio.h>
#include<conio.h>
void main()
 {
   int *p,*q,*r,i,k,j;
   clrscr();
   printf("\nenter the values of i,j and k:\n");
   scanf("%d%d%d",&i,&j,&k);
   p=&i;
   q=&j;
   r=&k;
   clrscr();
 printf("\n\nvalues(i,j,k) using *:        \t%d\t%d\t%d\t",*p,*q,*r);
 printf("\n\nvalues(i,j,k) without using *:\t%d\t%d\t%d\t",*(&i),*(&j),*(&k));
 printf("\n\nvalues(i,j,k) [simple]:         \t%d\t%d\t%d\t",i,j,k);

 printf("\n\nadress(i,j,k) using * and     \t%p\t%p\t%p\t",p,q,r);
 printf("\n\nadress(i,j,k) using *:        \t%u\t%u\t%u\t",p,q,r);
 printf("\n\naddress(i,j,k)without using *:\t%u\t%u\t%u",&i,&j,&k);
 i+=1;
 j+=1;
 k+=1;
 *p=*p+1;
 *q+=1;
 *r+=1;
 printf("\n\nvalues(i,j,k)after increamet(2):\t%d\t%d\t%d\t",*p,*q,*r);
 printf("\nvalues(i,j,k)after increamet(2)  :\t%d\t%d\t%d\t",*(&i),*(&j),*(&k));
i=*(&i)+1; /*or : *p=*(&i)+1 */
j=*(&j)+1;
k=*(&k)+1;
 printf("\n\n\nvalues(i,j,k)after another increamet(3):\t%d\t%d\t%d\t",*p,*q,*r);
 printf("\nvalues(i,j,k)after another increamet(3):\t%d\t%d\t%d\t",*(&i),*(&j),*(&k));
 printf("\nvalues(i,j,k)after another increamet(3):\t%d\t%d\t%d\t",i,j,k);
 getch();
 }

