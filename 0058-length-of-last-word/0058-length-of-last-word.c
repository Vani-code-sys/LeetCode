int lengthOfLastWord(char* s) {   

   int tokenLen = -1;
   char *token = strtok(s, " ");
   do
   {
      tokenLen = strlen(token);
      printf("token: \"%s\"\n", token);
   }
   while (token = strtok(NULL, " "));
    
   return (tokenLen);
}