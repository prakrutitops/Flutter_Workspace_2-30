#include <stdio.h>
#include <conio.h>

void sorting(int array[],int size)
{
	int position,loop;

	for (position=0; position < size;position++)
	{
		for (loop=position;loop<size;loop++)
		{
			if (array[position] < array[loop])
			{
				array[position]=array[position]+array[loop];
				array[loop]=array[position]-array[loop];
				array[position]=array[position]-array[loop];
			}

		}
	}

	for (loop=0;loop<5;loop++)
	{
		printf("\nSorted Array[%d] : %d",loop,array[loop]);
	}

}


void main()
{
	int array[5],loop;
	clrscr();

	for (loop=0;loop<5;loop++)
	{
		printf("Enter the Value in Array[%d] :",loop);
		scanf("%d",&array[loop]);
	}

	sorting(array,5);

	getch();
}

