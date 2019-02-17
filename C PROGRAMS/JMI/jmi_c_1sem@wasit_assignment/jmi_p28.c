//
//jmi_p28.c on 27-08-18
//
//programe to compute distance between two points

#include<stdio.h>
#include<math.h>

double my_square(double n)
{
	return (n * n);
}

double distance(double x1, double y1, double x2, double y2)
{
 return(sqrt(my_square(x2 - x1) + my_square(y2 - y1) ) );	
}

int main()
{
	double x1, y1, x2, y2;
	
	printf("\nEnter point p1(x1,y1):\t");
	scanf("%lf%lf", &x1, &y1);

    printf("\nEnter point p1(x1,y1):\t");
	scanf("%lf%lf", &x2, &y2);
	
	printf("\nDistance between p1(%.2lf,%.2lf) and p2(%.2lf,%.2lf) is %.2lf.", x1, y1, x2, y2, distance(x1, y1, x2, y2));

	return 0;	
}
