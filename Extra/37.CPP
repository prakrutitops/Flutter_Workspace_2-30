#include <stdio.h>
#include <conio.h>
#include <string.h>

void main()
{
	char str1[100],str2[100],constr[200];
	int loop;

	clrscr();
	printf("Enter the First String : ");
	scanf("%s",&str1);

	printf("Enter the Second String : ");
	scanf("%s",&str2);

	for (loop=0;loop<=strlen(str1);loop++)
		constr[loop]=str1[loop];

	for (loop=0;loop<=strlen(str2);loop++)
		constr[strlen(constr)]=str2[loop];

	printf("Merge String is : %s",constr);
	getch();
}