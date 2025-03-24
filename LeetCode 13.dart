class Solution {
  int romanToInt(String s) {
    Map<String, int> roman = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };
    int result = 0;
    int comp = 0;

    for (int i = s.length - 1; i >= 0; i--) {
      int value = roman[s[i]]!;
      if (value < comp) {
        result -= value;
        comp = value;
      } else {
        result += value;
        comp = value;
      }
    }
    return result;
  }
}
