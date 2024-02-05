
char* longestCommonPrefix(char** strs, int strsSize) {

    char *retstr = (char *) malloc ((200+1)*sizeof(char));
    retstr[0] = '\0';
    
    char *samplestr = (char *) malloc ((200+1)*sizeof(char));
    samplestr = strs[0];
    int violationdetected = false;
    for (int i = 0; ((i < 200) && (violationdetected == false)); i++) {
        for (int j = 0; (j < strsSize  && (violationdetected == false)); j++) {
            
            if ((strs[j][i] != '\0') && (samplestr[i] != '\0')) {
                if (strs[j][i] != samplestr[i]) {
                    violationdetected = true;
                }
            }
            else {
                violationdetected = true;
            }            
        }
    
        if (violationdetected == false)
                retstr[i] = samplestr[i];
        else {
            retstr[i] = '\0';
            violationdetected = true;
        }
    }    
    
    printf ("%s", retstr);
    return (retstr);    
}
