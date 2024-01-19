/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int* findWordsContaining(char** words, int wordsSize, char x, int* returnSize) {
    int i, retCount =0;
    int *returnArray = (int *)malloc(wordsSize * sizeof(int)); 
    while (i< wordsSize){
        if (strchr(words[i], x) != NULL) {
            returnArray[retCount] = i;
            retCount++;
        }            
        i++;
    }
    *returnSize = retCount;
    return returnArray;
}