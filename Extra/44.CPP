#include <stdio.h>
#include <conio.h>
#include <string.h>

void main()
{
	char str[100],rstr[100];
	int loop,place=0;

	clrscr();
	printf("Enter the String to show in Reverse :");
	scanf("%s",&str);

	for (loop=strlen(str);loop>=0;loop--)
	{
		rstr[place]=str[loop-1];
		place++;
	}
	printf("\nReverse String is : %s",rstr);
	getch();
}