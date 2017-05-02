%{

	#include<stdlib.h>
	#include<stdio.h>
	#include<math.h>

%}

%token var1

%%

	   S : var1;
             

%%

int main()
{
	printf("\nEnter any variable\n");
	yyparse();
	printf("\nValid variable name\n");
	return 0;

}

int yywrap()
{
	return 1;
}

void yyerror(char *str)
{
 	printf("\nInvalid variable name %s\n", str);
	exit(0);
}

