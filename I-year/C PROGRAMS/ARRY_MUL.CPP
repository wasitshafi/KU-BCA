#include<stdio.h>
#include<conio.h>
void main()
 {
  int ar,ac,j,i,br,bc,k,sum,a[20][20],b[20][20],c[20][20];
  clrscr();
  printf("\n\nenter the order of matrix 'a'(rxc):\n");
  scanf("%d%d",&ar,&ac);
  printf("\n\nenter the order of matrix 'b'(rxc):\n");
  scanf("%d%d",&br,&bc);
  if(ac!=br)
  {
  printf("\nmatrix multiplication is not possible (c!=r)");  /*condition for matrix multip.*/
  goto end;
  }
  printf("\nenter the %d elements of matrix 'a':\n",(ar*ac));
  for(i=0;i<ar;i++)
  {
  for(j=0;j<ac;j++)			/*scaning elements of matrix 'a'*/
  scanf("%d\n",&a[i][j]);
  }
  printf("\nenter the %d elements of matrix 'b':\n",(br*bc));
  for(i=0;i<br;i++)
  {
  for(j=0;j<bc;j++)     /*scaning elements of matrix 'b'*/
  scanf("%d\n",&b[i][j]);
  }
  clrscr();
  printf("\nthe given matrix 'a' is as follows:\n");
  for(i=0;i<ar;i++)
  {
  printf("\n");
  for(j=0;j<ac;j++)		      /*printing matrix 'a'*/
  printf("%d\t",a[i][j]);
  }
  printf("\n\nthe given matrix 'b' is as follows:\n");
  for(i=0;i<br;i++)
  {
  printf("\n");
  for(j=0;j<bc;j++)	      /*printing matrix 'b'*/
  printf("%d\t",b[i][j]);
  }
  printf("\n\nthe resultant matrix is as follows:\n");
  for(i=0;i<ar;i++)
  {
  for(j=0;j<bc;j++)         /*computing matrix multiplication*/
  {
  sum=0;
  for(k=0;k<ac;k++)
  {
  sum=sum+a[i][k]*b[k][j];
  //c[i][j]=sum;
  }
    c[i][j]=sum;
  }
  }
  for(i=0;i<ar;i++)
  {
  printf("\n");
  for(j=0;j<bc;j++)			    /*printing resultant matrix 'c'*/
  printf("%d\t",c[i][j]);
  }
  end:
  getch();
  }