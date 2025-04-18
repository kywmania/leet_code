class Solution {
  String reverseWords(String s) {
    return s
            .trim() // 앞뒤 공백 제거
            .split(RegExp(r'\s+')) // 정규식으로 공백 여러개여도 split
            .reversed // 역순
            .join(' ');
  }
}