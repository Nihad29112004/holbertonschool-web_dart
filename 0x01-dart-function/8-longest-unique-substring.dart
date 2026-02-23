String longestUniqueSubstring(String str) {
  int start = 0;
  int maxLength = 0;
  int maxStart = 0;
  Map<String, int> seen = {};

  for (int i = 0; i < str.length; i++) {
    String char = str[i];

    if (seen.containsKey(char) && seen[char]! >= start) {
      start = seen[char]! + 1;
    }

    seen[char] = i;

    if (i - start + 1 > maxLength) {
      maxLength = i - start + 1;
      maxStart = start;
    }
  }

  return str.substring(maxStart, maxStart + maxLength);
}