bool isPalindrome(String s) {
  if (s.length < 3) return false;
  return s == s.split('').reversed.join('');
}

String longestPalindrome(String s) {
  String longest = "";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      String substr = s.substring(i, j);
      if (isPalindrome(substr) && substr.length > longest.length) {
        longest = substr;
      }
    }
  }

  return longest.isEmpty ? "none" : longest;
}