int romanToInt(char* s) {
    int sum = 0;
    int i, curDigit = 0;
    char leftchar = '\0';
    char rightchar = '\0';
    int assignedVal = false;
    int len = strlen(s);
    while (i < len) {
        curDigit = 0;
        leftchar = s[i];
        rightchar = s[i + 1];
        assignedVal = false;
        
        if (leftchar == 'I') {
            if (rightchar == 'V') {
                curDigit = 4; 
                i++;
                assignedVal = true;
            } else if (rightchar == 'X')  {
                curDigit = 9; 
                i++;
                assignedVal = true;
            }                
        } else if (leftchar == 'X') {
            if (rightchar == 'L') {
                curDigit = 40; 
                i++;
                assignedVal = true;
            } else if (rightchar == 'C') {
                curDigit = 90;
                i++;
                assignedVal = true;            }  
        } else if (leftchar == 'C') {
            if (rightchar == 'D') {
                curDigit = 400;
                i++;
                assignedVal = true;
            } else if (rightchar == 'M')  {
                curDigit = 900;
                i++;
                assignedVal = true;
            }   
        } 
        
        if (!assignedVal) {
            switch (leftchar) {
                case 'I': curDigit = 1; break;
                case 'V': curDigit = 5; break;
                case 'X': curDigit = 10; break;
                case 'L': curDigit = 50; break;
                case 'C': curDigit = 100; break;
                case 'D': curDigit = 500; break;
                case 'M': curDigit = 1000; break;
                default: curDigit = 0; break;
            }
  
        }
        i++;              
        sum += curDigit;
    }
     return (sum);
}