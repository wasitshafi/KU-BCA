#include<stdio.h>
#include<conio.h>
#include<math.h>
void main()
{
	float a,b,c,disc,part_r,part_i,root1,root2;
	clrscr();
	printf("enter the co-effient of quard. equation\n\n");
	scanf("%f%f%f",&a,&b,&c);
	printf("co-effient are a=%f b=%f c=%f \n\n",a,b,c);
	disc=b*b-4*a*c;
	if(disc==0)
    {
	printf("root are real and equal\n\n");
	root1=-b/(2.0*a);
	root2=root1;
	printf("root1=%f root2=%f \n\n",root1,root2);
    }
    else
    {
      if(disc<0)
    {
	printf("roots are complex\n\n");
	part_r=-b/(2.0*a);
	part_i=sqrt(disc)/(2.0*a);
	printf("root 1=%f + i%f\n\n root2=%f-i%f\n",part_r,part_i,part_r,part_i);
    }

    else
    {
	printf("roots are real and distinc\n\n");
	root1=(-b+sqrt(disc))/(2.0*a);
	root2=(-b-sqrt(disc))/(2.0*a);
	printf("root 1=%f root2=%f",root1,root2);
    }
    }
    getch();
}

































