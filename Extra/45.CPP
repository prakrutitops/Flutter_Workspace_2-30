#include <stdio.h>
#include <conio.h>

int factorial(int num)
{
	if (num <= 1)
		return 1;
	else
		return num=num*factorial(num-1);
}



void main()
{
	int num;
	clrscr();

	printf("Enter the Number to Find the Factorial : ");
	scanf("%d",&num);

	printf("Factorial is %d",factorial(num));
	getch();
}