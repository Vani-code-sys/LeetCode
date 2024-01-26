/**
 * Note: The returned array must be malloced, assume caller calls free().
 */

int* twoSum(int* nums, int numsSize, int target, int* returnSize) {
 
    int num1Indx = -1;
    int num2Indx = -1;
    int *returnArray = (int *)malloc (2 * sizeof(int));
    int found = false;
        
    for (int i=0; i < numsSize; i++) {
        num1Indx = i;
        for (int j=i+1; j < numsSize; j++) {
            if ((nums[num1Indx] + nums[j]) == target) {
                num2Indx = j;
                found = true;
            }                
            if (found)
               break;
        }
        
        if (found)
            break;
     } 
     
    returnArray[0] = num1Indx;
    returnArray[1] = num2Indx;  
    *returnSize = 2;
    
    return (returnArray);
    
}