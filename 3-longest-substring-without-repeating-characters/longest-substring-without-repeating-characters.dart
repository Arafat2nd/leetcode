class Solution {
int lengthOfLongestSubstring(String s) {
  int n = s.length;
  int maxLength = 0;
  Map<String, int> charIndexMap = {};

  for (int left = 0, right = 0; right < n; right++) {
    String currentChar = s[right];
    if (charIndexMap.containsKey(currentChar) && charIndexMap[currentChar]! >= left) {
      left = charIndexMap[currentChar]! + 1;
    }
    charIndexMap[currentChar] = right;
    maxLength = maxLength < right - left + 1 ? right - left + 1 : maxLength;
  }

  return maxLength;
}
}