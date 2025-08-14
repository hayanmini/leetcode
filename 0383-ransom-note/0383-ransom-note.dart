class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    List<int> charCount = List.filled(26, 0);
  
    for (int i = 0; i < magazine.length; i++) {  
        charCount[magazine.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
    }
    
    for (int i = 0; i < ransomNote.length; i++) {
        int index = ransomNote.codeUnitAt(i) - 'a'.codeUnitAt(0);
        if (charCount[index] == 0) {
        return false;
        }
        charCount[index]--;
    }
    
    return true;
  }
}