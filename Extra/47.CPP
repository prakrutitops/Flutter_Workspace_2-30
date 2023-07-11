#include <stdio.h>
#include <conio.h>
#include <string.h>

char reverse(char string[100],char revstr[100],int loop,int place)
{
	if (loop < 0)
	{
		printf("\n Final REVERSE STRING is %s & String is %s",revstr,string);
		return revstr,0;
	}
	else
	{
	   revstr[place]=string[loop];
	   printf("\nRevstr[%d] is %c\t Reverse String is %s \t String[%d] is %c",place,revstr[place],revstr,loop,string[loop]);
	   return reverse(string,revstr,loop-1,place+1);
	}
}

void main()
{
	char txt[100],revtxt[100];
	int len;
	clrscr();

	printf("Enter the String : ");
	scanf("%s",&txt);

	len=strlen(txt);
	//revtxt = reverse(txt,len-1,0);
	printf("\nReverse String is : %s",reverse(txt,revtxt,len-1,0));
	getch();
}
