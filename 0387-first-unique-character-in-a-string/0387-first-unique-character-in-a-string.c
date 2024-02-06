int firstUniqChar(char* s) {
    int len = strlen (s);
    int retval = -1;
    for (int i =0; i < len; i++) {
        int repleftfound = false;
        /**Left scan **/
        for (int j = i-1; j >= 0; j--){
            if (s[i] == s[j]) {
                repleftfound = true; 
                break;
            }
        }
        int reprightfound = false;
        /**Right scan **/
        for (int k = i+1; k < len; k++){
            if (s[i] == s[k]) {
                reprightfound = true;
                break;
            }
        }   
        
   
        if (((reprightfound == false)  && (i < len)) && 
            ((repleftfound == false)) && (i >= 0)) {
            retval = i;
            break;
        }
    }

    return (retval);    
}