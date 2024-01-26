
int strStr(char* haystack, char* needle) {
    
    int givenStrLen = strlen(haystack);
    char *newString = strstr (haystack, needle);
    int newStrLen = -1;
    if (newString != NULL) {
        newStrLen = givenStrLen - strlen(newString);
    }
    return(newStrLen);
    
}