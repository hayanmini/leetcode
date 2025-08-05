class Solution {
  bool isPalindrome(String s) {
    String filtered = '';
  for (var c in s.split('')) {
    if (RegExp(r'[a-zA-Z0-9]').hasMatch(c)) {
      filtered += c.toLowerCase();
    }
  }

  int left = 0;
  int right = filtered.length - 1;
  while (left < right) {
    if (filtered[left] != filtered[right]) {
      return false;
    }
    left++;
    right--;
  }
  
  return true;
  }
}