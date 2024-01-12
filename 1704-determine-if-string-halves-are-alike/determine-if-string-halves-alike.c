#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <ctype.h>

int isvowel(int ch)
{
  int c = toupper(ch);
  return (c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U');
}

bool halvesAreAlike(char* s) {
    int slen = strlen (s);
    int hslen = slen/2;
    
    int fsvcounter = 0; //left half string vowel count
    for (int i=0; i < hslen -1; i++) {
        fsvcounter += isvowel(s[i]);        
    }

    int ssvcounter = 0; //right half string vowel count
    for (int j=hslen; j < slen -1; j++) {
        ssvcounter += isvowel(s[j]);        
    }
    
    if (fsvcounter == ssvcounter)
        return (true);
    else
        return (false);
    
}

int main()
{
    printf("%d", halvesAreAlike("book") );
    
    return 0;
}