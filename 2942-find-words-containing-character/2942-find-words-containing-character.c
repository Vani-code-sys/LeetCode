/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int* findWordsContaining(char** words, int wordsSize, char x, int* returnSize) {
    int i, retCount =0;
    int *returnArray = (int *)malloc(wordsSize * sizeof(int)); 
    //*returnSize = 0;
    //printf ("#Words: %d\n", wordsSize);
    //int retCount = 0;
    while (i< wordsSize){
        //printf ("Index: %d\n", i);
        //printf ("Word: %s\n", words[i]);
        if (strchr(words[i], x) != NULL) {
            //printf ("Reached here\n");
            returnArray[retCount] = i;
            //printf ("return Index: %d\n", retCount);
            //printf ("returnArray: %d\n", returnArray[i]);
            retCount++;
        }            
        i++;
    }
    *returnSize = retCount;
    //printf ("Ret count:%d\n", *returnSize);
    //for (int i=0; i < retCount; i++) {
        //printf ("Return Array: %d\n", returnArray[i]);
    //}
    return returnArray;
}