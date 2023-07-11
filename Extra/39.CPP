#include <stdio.h>
#include <conio.h>

int square(int a)
{
	return a*a;
}

int cube(int a)
{
	return a*a*a;
}

void main()
{
	int num;
	clrscr();

	printf("Enter the Number : ");
	scanf("%d",&num);

	printf("Square of the Number is %d",square(num));
	printf("\nCube of the Number is %d",cube(num));
	getch();
}