class Solution {
  int romanToInt(String s) {
    Map<String, int> romanToIntMap = {
      'I': 1, 
      'V': 5, 
      'X': 10, 
      'L': 50, 
      'C': 100, 
      'D': 500, 
      'M': 1000
    };
    
    int total = 0;
    
    for (int i = 0; i < s.length; i++) {
      int currentVal = romanToIntMap[s[i]]!;
      int nextVal = i + 1 < s.length ? romanToIntMap[s[i + 1]]! : 0;
      
      if (currentVal < nextVal) {
        total -= currentVal;
      } else {
        total += currentVal;
      }
    }
    
    return total;
  }
}