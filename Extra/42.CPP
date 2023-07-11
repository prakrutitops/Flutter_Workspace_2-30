#include <stdio.h>
#include <conio.h>

int maxnumber(int array[],int size)
{
	int maxnumber=0,index;
	//printf("Max Number is %d",a[size]);
		for (index=0;index<=size;index++)
	{
		if (index == 0)
		{
			maxnumber = array[index];
		}
		else
		{
			if (array[index] > maxnumber)
			{
				maxnumber = array[index];
			}
		}
	}
	return maxnumber;
}

void main()
{
	int a[5],loop;
	clrscr();

	for (loop=0;loop<5;loop++)
	{
		printf("Enter the Value in Array[%d] : ",loop);
		scanf("%d",&a[loop]);
	}

	printf("\nMax Number is %d",maxnumber(a,loop));
	getch();
}