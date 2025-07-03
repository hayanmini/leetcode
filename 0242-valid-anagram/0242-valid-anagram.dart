class Solution {
  bool isAnagram(String s, String t) {
    // 두 문자열의 길이 확인
    if (s.length != t.length) return false;

    // 각 문자열의 문자를 정렬한 후 비교
    List<String> sortedS = s.split('')..sort();
    List<String> sortedT = t.split('')..sort();  
    
    return sortedS.join() == sortedT.join();
  }
}