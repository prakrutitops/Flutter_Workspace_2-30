#include <stdio.h>
#include <conio.h>

int reverse(int num,int rnum)
{
	int ld;
	if (num <=0)
	{
		printf("\nFinal RNUM Value is %d",rnum);
		return rnum;
	}
	else
	{
		ld=num%10;
		rnum=(rnum*10)+ld;
		printf("\nRNUM = %d, LD = %d",rnum,ld);
		return reverse(num/10,rnum);

	}
}

void main()
{
	int num;

	clrscr();

	printf("Enter the number to check of Palindrome : ");
	scanf("%d",&num);


	if (num == reverse(num,0))
		printf("\nEnter Number is Palindrome");
	else
		printf("\nEnter Number is NOT Palindrome");
	getch();
}
