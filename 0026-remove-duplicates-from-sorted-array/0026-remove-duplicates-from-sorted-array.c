int removeDuplicates(int* nums, int numsSize) {
   int retCount = 1;
    int numLeft = nums[0];
    int numRight = 0;
    int i = 0;
    while (i < numsSize - 1) {
        i++;
        numRight = nums[i];
        if (numLeft != numRight) {
            nums[retCount] = numRight;
            numLeft = numRight;
            retCount++;
        }
    }    
    return (retCount);     
}