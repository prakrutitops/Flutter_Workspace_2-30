#include <stdio.h>
#include <conio.h>

void fibonacci(int loop)
{
	int num1=0,num2=1,fib=0;

	while (loop > 0)
	{
		printf("%d.",fib);
		fib =num1+num2;
		num1=num2;
		num2=fib;
		loop--;
	}

}


void main()
{       clrscr();
	int loop;

	printf("How many Fibonacci Number you want to see : ");
	scanf("%d",&loop);
	fibonacci(loop);

	getch();
}


