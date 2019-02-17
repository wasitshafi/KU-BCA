#include <stdio.h>
#include <stdlib.h>
#define GRADE_A 80
#define GRADE_B 60
#define GRADE_C 50
#define GRADE_D 40

float get_data(void)
{
    float percentage;

    printf("\nWhat is your percentage:\t");
    scanf("%f", &percentage);

    return percentage;
}

char calculate_grade(float percentage)
{
    char grade;

    if(percentage >= 80)grade= 'A';
    else if (percentage >=70)grade = 'B';
    else if (percentage >=60)grade = 'C';
    else if (percentage >=50)grade = 'D';
    else if (percentage >=40)grade = 'E';
    else grade = 'F';

    return grade;
}

int main()
{
    float percentage = get_data();
    char grade = calculate_grade(percentage);

    printf("\nYour grade is : \t%c", grade);

    return 0;
}
