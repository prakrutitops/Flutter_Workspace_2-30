#include <stdio.h>
#include <conio.h>

int sum(int a,int b)
{
	return a+b;
}

int sub(int a, int b)
{
	return a-b;
}

int multi(int a, int b)
{
	return a*b;
}

int div(int a, int b)
{
	return a/b;
}

void main()
{
	int num1,num2,add;
	clrscr();
	printf("Enter the First Number : ");
	scanf("%d",&num1);
	printf("Enter the Second Number : ");
	scanf("%d",&num2);

	printf("\nAddition is %d",sum(num1,num2));
	printf("\nSubtraction is %d",sub(num1,num2));
	printf("\nMultiplication is %d",multi(num1,num2));
	printf("\nDivision is %d :",div(num1,num2));

	getch();
}

