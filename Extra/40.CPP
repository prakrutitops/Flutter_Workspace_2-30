#include <stdio.h>
#include <conio.h>

void factorial(int num)
{
	long int factorial=1;
	int loop=1;
	while (loop<=num)
	{
		  factorial=factorial*loop;
		  loop++;
	}
	printf("Factorial for %d is : %ld",num,factorial);

}

void main()
{
	int num;
	clrscr();

	printf("Enter the Number : ");
	scanf("%d",&num);

	factorial(num);
	getch();
}