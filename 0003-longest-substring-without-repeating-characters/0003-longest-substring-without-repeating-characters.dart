class Solution {
  int lengthOfLongestSubstring(String s) {
    Map<String, int> charIndexMap = {};
    int maxLength = 0;
    int windowStart = 0;

    for (int windowEnd = 0; windowEnd < s.length; windowEnd++) {
        String currentChar = s[windowEnd];

        if (charIndexMap.containsKey(currentChar) && charIndexMap[currentChar]! >= windowStart) {
        windowStart = charIndexMap[currentChar]! + 1;
        }

        charIndexMap[currentChar] = windowEnd;

        maxLength = (windowEnd - windowStart + 1).clamp(maxLength, s.length);
    }

    return maxLength;
  }
}