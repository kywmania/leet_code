class Solution {
  String gcdOfStrings(String str1, String str2) {
    // str1 = "ABCABC", str2 = "ABC"
    if(str1+str2 != str2+str1){
        return '';
    }
    // 두 문자열 길이의 최대공약수를 구해야 함
    int gcd(int a, int b){
        if(b == 0) return a;
        return gcd(b, a%b);
    }
    int result = gcd(str1.length, str2.length);
    // str1의 인덱스 0부터 result-1까지 자르기
    return str1.substring(0, result);
  }
}