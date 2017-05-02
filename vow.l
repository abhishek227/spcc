%{
int cnt_vowel=0,cnt_consonant=0;
char string[100];
void mainp123(char *yytext);
void calcu(char *wordn);
%}
%%

[a-zA-Z]+ {strcpy(string,yytext);mainp123(string);}



%%
main()
{
yylex();
}


int yywrap()



{return 0;
}



void mainp123(char *string)
{

   char word[30];
   int i=0,j=0;
      strcat(string," ");

   while(string[i]!='\0')
   {
    if(string[i]!=' ')
       word[j]=string[i];
    else
    {
       word[j]='\0';
       calcu(word);
       j=-1;
      strcpy(word,"");

    }

    i++;
    j++;
   }
     printf("\n\nvowel=%d \nconsonants=%d",cnt_vowel,cnt_consonant);
     
}








void calcu(char *wordn)
{
char str[30];
int j=0;

    printf("\n\nnew word");
    strcpy(str,"");
    strcpy(str,wordn);
    for(j=0;j<strlen(str);j++)
    {
    switch(str[j])
    { case 'a':
      case 'A':  printf("\n 'a'is a vowel in word %s",str);
		 cnt_vowel++;
      break;

      case 'e':
      case 'E':  printf("\n 'e'is a vowel in word %s",str);
		  cnt_vowel++;
      break;
      case 'i':
      case 'I':  printf("\n 'i'is a vowel in word %s",str);
		  cnt_vowel++;
      break;
      case 'o':
      case 'O':  printf("\n 'o'is a vowel in word %s",str);
		  cnt_vowel++;
      break;

      case 'u':
      case 'U':  printf("\n 'u'is a vowel in word %s",str);
		  cnt_vowel++;
      break;

      default : if(str[j]!=' ')
      cnt_consonant++;
    }

}

}
