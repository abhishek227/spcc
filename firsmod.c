#include<stdio.h>
#include<ctype.h>
 
void Find_First(char[], char);
void Array_Manipulation(char[], char);
 
int limit;
char production[25][25];
 
int main()
{
	char option; 
	char ch;
	char array[25];
	int count;
	printf("\nEnter Total Number of Productions:\t");
	scanf("%d", &limit);
	for(count = 0; count < limit; count++)
	{
		printf("\nValue of Production Number [%d]:\t", count + 1);
		scanf("%s", production[count]);
		printf("Production[%s]",production[count]);	
	}
}
