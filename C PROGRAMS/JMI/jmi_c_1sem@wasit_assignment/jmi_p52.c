//
//
//
//
#include<stdio.h>

#define income_tax_rate 15
#define da_rate 10
#define house_rent_allowance 3000


struct employee{
    int id;
    char name[10];
    int basic_salary;
    int hra;
    int da;
    int income_tax;
    int net_salary;
};

void get_data(struct employee emp[], int i) // *emp == emp[]
{
	 printf("\n\n\nEnter employee %d name:\t", i + 1);
     fflush(stdin);
	 gets(emp[i].name);
	 
	 printf("\nEnter \'%s\' id:\t", emp[i].name);
	 fflush(stdin);
	 scanf("%d", &emp[i].id);
	 
	 printf("\nEnter \'%s\' basic salary:\t",emp[i].name);
	 fflush(stdin);
	 scanf("%d", &emp[i].basic_salary);
     
	 emp[i].hra = house_rent_allowance;
	 emp[i].da = emp[i].basic_salary * da_rate / 100;
     emp[i].income_tax = ( emp[i].basic_salary + emp[i].da + emp[i].hra ) * income_tax_rate / 100;
	 emp[i].net_salary = (emp[i].basic_salary + emp[i].da + emp[i].hra) - emp[i].income_tax;
}

void put_data(struct employee *emp, int i)
{
    FILE *fptr_emp_pay_silp, *fptr_emp_data;
	char file_name[20];
	
	printf("\n%s\t%d\t%d",emp[i].name, emp[i].id,emp[i].net_salary); // printing data on console
	  
	itoa(emp[i].id, file_name, 10);
	
	strcat(file_name, "_");
	strcat(file_name, emp[i].name);	
	strcat(file_name, ".txt");    //file_name = empid_empname.txt
	
    fptr_emp_pay_silp = fopen(file_name, "a"); // for each employee 
	fptr_emp_data = fopen("employee_data.txt", "a"); //to store all employee details 
	 
	fprintf(fptr_emp_data, "************* Pay Silp of %s **************\n",emp[i].name); 
	fprintf(fptr_emp_data, "\nEmployee id: %d \nBasic salary :%d\nHRA :%d\nDA: %d\nIncome tax: %d\nTotal salary: %d\n\n", emp[i].id, emp[i].basic_salary, emp[i].hra, emp[i].da, emp[i].income_tax, emp[i].net_salary);
 
	 
	fprintf(fptr_emp_pay_silp, "************* Pay Silp of %s **************\n",emp[i].name); 
    fprintf(fptr_emp_pay_silp, "\nEmployee id: %d \nBasic salary :%d\nHRA :%d\nDA: %d\nIncome tax: %d\nTotal salary: %d", emp[i].id, emp[i].basic_salary, emp[i].hra, emp[i].da, emp[i].income_tax, emp[i].net_salary);	
    fprintf(fptr_emp_pay_silp, "\n\n***************************"); 
}

void print_heading()
{
    int i;	
 	printf("Employee data are as follows:\n\n");

	for(i = 0 ; i < 23 ; i++, printf("*"));
	printf("\n*NAME\tID\tSALARY*\n");
	for(i = 0 ; i < 23 ; i++, printf("*"));
    printf("\n\n");
}

int main()
{
    struct employee *emp;
    int n, i;   
	
	printf("\nEnter no of employee:\t");
    scanf("%d", &n);
    
    emp = (struct employee *)malloc(n * sizeof(struct employee));

    for( i = 0 ; i < n ; i++ )
    get_data(emp, i);  

    system("cls");
    print_heading();
     	
 	for( i = 0 ; i < n ; i++ )
	 put_data(emp, i);
     
 	
	return 0;
}
