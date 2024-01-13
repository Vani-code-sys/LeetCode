bool isPalindrome(int n) {
    int temp=n; 
    long sum=0;
    int r=0;
    while(n>0)    
    {    
        r=n%10;    
        sum=(sum*10)+r;    
        n=n/10;    
    }    
    if(temp==sum)    
        return true;   
    else    
        return false;   
}